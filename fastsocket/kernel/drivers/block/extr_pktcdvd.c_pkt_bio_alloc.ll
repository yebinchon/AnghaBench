; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_pktcdvd.c_pkt_bio_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_pktcdvd.c_pkt_bio_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i32, %struct.bio_vec* }
%struct.bio_vec = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@pkt_bio_destructor = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bio* (i32)* @pkt_bio_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bio* @pkt_bio_alloc(i32 %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bio_vec*, align 8
  %5 = alloca %struct.bio*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.bio_vec* null, %struct.bio_vec** %4, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.bio* @kmalloc(i32 16, i32 %6)
  store %struct.bio* %7, %struct.bio** %5, align 8
  %8 = load %struct.bio*, %struct.bio** %5, align 8
  %9 = icmp ne %struct.bio* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %34

11:                                               ; preds = %1
  %12 = load %struct.bio*, %struct.bio** %5, align 8
  %13 = call i32 @bio_init(%struct.bio* %12)
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.bio_vec* @kcalloc(i32 %14, i32 4, i32 %15)
  store %struct.bio_vec* %16, %struct.bio_vec** %4, align 8
  %17 = load %struct.bio_vec*, %struct.bio_vec** %4, align 8
  %18 = icmp ne %struct.bio_vec* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %11
  br label %31

20:                                               ; preds = %11
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.bio*, %struct.bio** %5, align 8
  %23 = getelementptr inbounds %struct.bio, %struct.bio* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.bio_vec*, %struct.bio_vec** %4, align 8
  %25 = load %struct.bio*, %struct.bio** %5, align 8
  %26 = getelementptr inbounds %struct.bio, %struct.bio* %25, i32 0, i32 2
  store %struct.bio_vec* %24, %struct.bio_vec** %26, align 8
  %27 = load i32, i32* @pkt_bio_destructor, align 4
  %28 = load %struct.bio*, %struct.bio** %5, align 8
  %29 = getelementptr inbounds %struct.bio, %struct.bio* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.bio*, %struct.bio** %5, align 8
  store %struct.bio* %30, %struct.bio** %2, align 8
  br label %35

31:                                               ; preds = %19
  %32 = load %struct.bio*, %struct.bio** %5, align 8
  %33 = call i32 @kfree(%struct.bio* %32)
  br label %34

34:                                               ; preds = %31, %10
  store %struct.bio* null, %struct.bio** %2, align 8
  br label %35

35:                                               ; preds = %34, %20
  %36 = load %struct.bio*, %struct.bio** %2, align 8
  ret %struct.bio* %36
}

declare dso_local %struct.bio* @kmalloc(i32, i32) #1

declare dso_local i32 @bio_init(%struct.bio*) #1

declare dso_local %struct.bio_vec* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
