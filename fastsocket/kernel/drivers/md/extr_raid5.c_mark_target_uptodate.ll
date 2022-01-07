; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_mark_target_uptodate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_mark_target_uptodate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe_head = type { %struct.r5dev* }
%struct.r5dev = type { i32 }

@R5_UPTODATE = common dso_local global i32 0, align 4
@R5_Wantcompute = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stripe_head*, i32)* @mark_target_uptodate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_target_uptodate(%struct.stripe_head* %0, i32 %1) #0 {
  %3 = alloca %struct.stripe_head*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.r5dev*, align 8
  store %struct.stripe_head* %0, %struct.stripe_head** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %32

9:                                                ; preds = %2
  %10 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %11 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %10, i32 0, i32 0
  %12 = load %struct.r5dev*, %struct.r5dev** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %12, i64 %14
  store %struct.r5dev* %15, %struct.r5dev** %5, align 8
  %16 = load i32, i32* @R5_UPTODATE, align 4
  %17 = load %struct.r5dev*, %struct.r5dev** %5, align 8
  %18 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %17, i32 0, i32 0
  %19 = call i32 @set_bit(i32 %16, i32* %18)
  %20 = load i32, i32* @R5_Wantcompute, align 4
  %21 = load %struct.r5dev*, %struct.r5dev** %5, align 8
  %22 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %21, i32 0, i32 0
  %23 = call i32 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load i32, i32* @R5_Wantcompute, align 4
  %29 = load %struct.r5dev*, %struct.r5dev** %5, align 8
  %30 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %29, i32 0, i32 0
  %31 = call i32 @clear_bit(i32 %28, i32* %30)
  br label %32

32:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
