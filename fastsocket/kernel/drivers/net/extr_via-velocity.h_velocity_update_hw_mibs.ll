; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_via-velocity.h_velocity_update_hw_mibs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_via-velocity.h_velocity_update_hw_mibs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.velocity_info = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@MIBCR_MIBFLSH = common dso_local global i32 0, align 4
@MIBCR_MPTRINI = common dso_local global i32 0, align 4
@HW_MIB_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.velocity_info*)* @velocity_update_hw_mibs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @velocity_update_hw_mibs(%struct.velocity_info* %0) #0 {
  %2 = alloca %struct.velocity_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.velocity_info* %0, %struct.velocity_info** %2, align 8
  %5 = load i32, i32* @MIBCR_MIBFLSH, align 4
  %6 = load %struct.velocity_info*, %struct.velocity_info** %2, align 8
  %7 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = call i32 @BYTE_REG_BITS_ON(i32 %5, i32* %9)
  br label %11

11:                                               ; preds = %19, %1
  %12 = load i32, i32* @MIBCR_MIBFLSH, align 4
  %13 = load %struct.velocity_info*, %struct.velocity_info** %2, align 8
  %14 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = call i64 @BYTE_REG_BITS_IS_ON(i32 %12, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  br label %11

20:                                               ; preds = %11
  %21 = load i32, i32* @MIBCR_MPTRINI, align 4
  %22 = load %struct.velocity_info*, %struct.velocity_info** %2, align 8
  %23 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = call i32 @BYTE_REG_BITS_ON(i32 %21, i32* %25)
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %49, %20
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @HW_MIB_SIZE, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %27
  %32 = load %struct.velocity_info*, %struct.velocity_info** %2, align 8
  %33 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @readl(i32* %35)
  %37 = sext i32 %36 to i64
  %38 = and i64 %37, 16777215
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load %struct.velocity_info*, %struct.velocity_info** %2, align 8
  %42 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, %40
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %31
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %27

52:                                               ; preds = %27
  ret void
}

declare dso_local i32 @BYTE_REG_BITS_ON(i32, i32*) #1

declare dso_local i64 @BYTE_REG_BITS_IS_ON(i32, i32*) #1

declare dso_local i32 @readl(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
