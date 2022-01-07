; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_osdblk.c_bio_chain_clone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_osdblk.c_bio_chain_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.bio*, i32*, i32 }

@__GFP_WAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"bio_chain_clone with err\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bio* (%struct.bio*, i32)* @bio_chain_clone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bio* @bio_chain_clone(%struct.bio* %0, i32 %1) #0 {
  %3 = alloca %struct.bio*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bio*, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca %struct.bio*, align 8
  store %struct.bio* %0, %struct.bio** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.bio* null, %struct.bio** %7, align 8
  store %struct.bio* null, %struct.bio** %8, align 8
  br label %9

9:                                                ; preds = %42, %2
  %10 = load %struct.bio*, %struct.bio** %4, align 8
  %11 = icmp ne %struct.bio* %10, null
  br i1 %11, label %12, label %46

12:                                               ; preds = %9
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.bio*, %struct.bio** %4, align 8
  %15 = getelementptr inbounds %struct.bio, %struct.bio* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.bio* @bio_kmalloc(i32 %13, i32 %16)
  store %struct.bio* %17, %struct.bio** %6, align 8
  %18 = load %struct.bio*, %struct.bio** %6, align 8
  %19 = icmp ne %struct.bio* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  br label %48

21:                                               ; preds = %12
  %22 = load %struct.bio*, %struct.bio** %6, align 8
  %23 = load %struct.bio*, %struct.bio** %4, align 8
  %24 = call i32 @__bio_clone(%struct.bio* %22, %struct.bio* %23)
  %25 = load %struct.bio*, %struct.bio** %6, align 8
  %26 = getelementptr inbounds %struct.bio, %struct.bio* %25, i32 0, i32 1
  store i32* null, i32** %26, align 8
  %27 = load i32, i32* @__GFP_WAIT, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load %struct.bio*, %struct.bio** %6, align 8
  %32 = getelementptr inbounds %struct.bio, %struct.bio* %31, i32 0, i32 0
  store %struct.bio* null, %struct.bio** %32, align 8
  %33 = load %struct.bio*, %struct.bio** %7, align 8
  %34 = icmp ne %struct.bio* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %21
  %36 = load %struct.bio*, %struct.bio** %6, align 8
  store %struct.bio* %36, %struct.bio** %8, align 8
  store %struct.bio* %36, %struct.bio** %7, align 8
  br label %42

37:                                               ; preds = %21
  %38 = load %struct.bio*, %struct.bio** %6, align 8
  %39 = load %struct.bio*, %struct.bio** %8, align 8
  %40 = getelementptr inbounds %struct.bio, %struct.bio* %39, i32 0, i32 0
  store %struct.bio* %38, %struct.bio** %40, align 8
  %41 = load %struct.bio*, %struct.bio** %6, align 8
  store %struct.bio* %41, %struct.bio** %8, align 8
  br label %42

42:                                               ; preds = %37, %35
  %43 = load %struct.bio*, %struct.bio** %4, align 8
  %44 = getelementptr inbounds %struct.bio, %struct.bio* %43, i32 0, i32 0
  %45 = load %struct.bio*, %struct.bio** %44, align 8
  store %struct.bio* %45, %struct.bio** %4, align 8
  br label %9

46:                                               ; preds = %9
  %47 = load %struct.bio*, %struct.bio** %7, align 8
  store %struct.bio* %47, %struct.bio** %3, align 8
  br label %52

48:                                               ; preds = %20
  %49 = call i32 @OSDBLK_DEBUG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.bio*, %struct.bio** %7, align 8
  %51 = call i32 @bio_chain_put(%struct.bio* %50)
  store %struct.bio* null, %struct.bio** %3, align 8
  br label %52

52:                                               ; preds = %48, %46
  %53 = load %struct.bio*, %struct.bio** %3, align 8
  ret %struct.bio* %53
}

declare dso_local %struct.bio* @bio_kmalloc(i32, i32) #1

declare dso_local i32 @__bio_clone(%struct.bio*, %struct.bio*) #1

declare dso_local i32 @OSDBLK_DEBUG(i8*) #1

declare dso_local i32 @bio_chain_put(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
