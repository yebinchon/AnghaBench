; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_hpsa_find_target_lun.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_hpsa_find_target_lun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, i32 }

@lun_taken = common dso_local global i32 0, align 4
@HPSA_MAX_DEVICES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctlr_info*, i8*, i32, i32*, i32*)* @hpsa_find_target_lun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_find_target_lun(%struct.ctlr_info* %0, i8* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.ctlr_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ctlr_info* %0, %struct.ctlr_info** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* @lun_taken, align 4
  %14 = load i32, i32* @HPSA_MAX_DEVICES, align 4
  %15 = call i32 @DECLARE_BITMAP(i32 %13, i32 %14)
  %16 = load i32, i32* @lun_taken, align 4
  %17 = load i32, i32* @HPSA_MAX_DEVICES, align 4
  %18 = call i32 @bitmap_zero(i32 %16, i32 %17)
  store i32 0, i32* %11, align 4
  br label %19

19:                                               ; preds = %61, %5
  %20 = load i32, i32* %11, align 4
  %21 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %22 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %64

25:                                               ; preds = %19
  %26 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %27 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %27, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %28, i64 %30
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %60

37:                                               ; preds = %25
  %38 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %39 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %39, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %40, i64 %42
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, -1
  br i1 %47, label %48, label %60

48:                                               ; preds = %37
  %49 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %50 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %50, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %51, i64 %53
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @lun_taken, align 4
  %59 = call i32 @__set_bit(i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %48, %37, %25
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %11, align 4
  br label %19

64:                                               ; preds = %19
  %65 = load i32, i32* @lun_taken, align 4
  %66 = load i32, i32* @HPSA_MAX_DEVICES, align 4
  %67 = call i32 @find_first_zero_bit(i32 %65, i32 %66)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @HPSA_MAX_DEVICES, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load i32, i32* %11, align 4
  %73 = load i32*, i32** %9, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i32*, i32** %10, align 8
  store i32 0, i32* %74, align 4
  store i32 1, i32* %12, align 4
  br label %75

75:                                               ; preds = %71, %64
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  ret i32 %79
}

declare dso_local i32 @DECLARE_BITMAP(i32, i32) #1

declare dso_local i32 @bitmap_zero(i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
