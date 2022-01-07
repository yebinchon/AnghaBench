; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_pktcdvd.c_pkt_add_list_last.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_pktcdvd.c_pkt_add_list_last.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.bio* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*, %struct.bio**, %struct.bio**)* @pkt_add_list_last to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pkt_add_list_last(%struct.bio* %0, %struct.bio** %1, %struct.bio** %2) #0 {
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.bio**, align 8
  %6 = alloca %struct.bio**, align 8
  store %struct.bio* %0, %struct.bio** %4, align 8
  store %struct.bio** %1, %struct.bio*** %5, align 8
  store %struct.bio** %2, %struct.bio*** %6, align 8
  %7 = load %struct.bio*, %struct.bio** %4, align 8
  %8 = getelementptr inbounds %struct.bio, %struct.bio* %7, i32 0, i32 0
  store %struct.bio* null, %struct.bio** %8, align 8
  %9 = load %struct.bio**, %struct.bio*** %6, align 8
  %10 = load %struct.bio*, %struct.bio** %9, align 8
  %11 = icmp ne %struct.bio* %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %3
  %13 = load %struct.bio**, %struct.bio*** %5, align 8
  %14 = load %struct.bio*, %struct.bio** %13, align 8
  %15 = icmp eq %struct.bio* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.bio*, %struct.bio** %4, align 8
  %19 = load %struct.bio**, %struct.bio*** %6, align 8
  %20 = load %struct.bio*, %struct.bio** %19, align 8
  %21 = getelementptr inbounds %struct.bio, %struct.bio* %20, i32 0, i32 0
  store %struct.bio* %18, %struct.bio** %21, align 8
  %22 = load %struct.bio*, %struct.bio** %4, align 8
  %23 = load %struct.bio**, %struct.bio*** %6, align 8
  store %struct.bio* %22, %struct.bio** %23, align 8
  br label %34

24:                                               ; preds = %3
  %25 = load %struct.bio**, %struct.bio*** %5, align 8
  %26 = load %struct.bio*, %struct.bio** %25, align 8
  %27 = icmp ne %struct.bio* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load %struct.bio*, %struct.bio** %4, align 8
  %31 = load %struct.bio**, %struct.bio*** %5, align 8
  store %struct.bio* %30, %struct.bio** %31, align 8
  %32 = load %struct.bio*, %struct.bio** %4, align 8
  %33 = load %struct.bio**, %struct.bio*** %6, align 8
  store %struct.bio* %32, %struct.bio** %33, align 8
  br label %34

34:                                               ; preds = %24, %12
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
