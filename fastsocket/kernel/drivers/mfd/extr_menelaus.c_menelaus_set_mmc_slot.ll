; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_menelaus.c_menelaus_set_mmc_slot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_menelaus.c_menelaus_set_mmc_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@the_menelaus = common dso_local global %struct.TYPE_2__* null, align 8
@MENELAUS_MCT_CTRL2 = common dso_local global i32 0, align 4
@MENELAUS_MCT_CTRL3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @menelaus_set_mmc_slot(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 1
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 2
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %122

21:                                               ; preds = %15, %4
  %22 = load i32, i32* %8, align 4
  %23 = icmp sge i32 %22, 3
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %122

27:                                               ; preds = %21
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_menelaus, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load i32, i32* @MENELAUS_MCT_CTRL2, align 4
  %32 = call i32 @menelaus_read_reg(i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %117

36:                                               ; preds = %27
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* %11, align 4
  %45 = or i32 %44, 80
  store i32 %45, i32* %11, align 4
  br label %49

46:                                               ; preds = %40
  %47 = load i32, i32* %11, align 4
  %48 = and i32 %47, -81
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %46, %43
  br label %60

50:                                               ; preds = %36
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* %11, align 4
  %55 = or i32 %54, 160
  store i32 %55, i32* %11, align 4
  br label %59

56:                                               ; preds = %50
  %57 = load i32, i32* %11, align 4
  %58 = and i32 %57, -161
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %56, %53
  br label %60

60:                                               ; preds = %59, %49
  %61 = load i32, i32* @MENELAUS_MCT_CTRL2, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @menelaus_write_reg(i32 %61, i32 %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %117

67:                                               ; preds = %60
  %68 = load i32, i32* @MENELAUS_MCT_CTRL3, align 4
  %69 = call i32 @menelaus_read_reg(i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %117

73:                                               ; preds = %67
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %87

77:                                               ; preds = %73
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* %11, align 4
  %82 = or i32 %81, 1
  store i32 %82, i32* %11, align 4
  br label %86

83:                                               ; preds = %77
  %84 = load i32, i32* %11, align 4
  %85 = and i32 %84, -2
  store i32 %85, i32* %11, align 4
  br label %86

86:                                               ; preds = %83, %80
  br label %111

87:                                               ; preds = %73
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32, i32* %10, align 4
  %92 = or i32 %91, 2
  store i32 %92, i32* %10, align 4
  br label %96

93:                                               ; preds = %87
  %94 = load i32, i32* %10, align 4
  %95 = and i32 %94, -3
  store i32 %95, i32* %10, align 4
  br label %96

96:                                               ; preds = %93, %90
  %97 = load i32, i32* @MENELAUS_MCT_CTRL2, align 4
  %98 = call i32 @menelaus_read_reg(i32 %97)
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = and i32 %99, -4
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %12, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* @MENELAUS_MCT_CTRL2, align 4
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @menelaus_write_reg(i32 %104, i32 %105)
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %96
  br label %117

110:                                              ; preds = %96
  br label %111

111:                                              ; preds = %110, %86
  %112 = load i32, i32* %11, align 4
  %113 = and i32 %112, -13
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* @MENELAUS_MCT_CTRL3, align 4
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @menelaus_write_reg(i32 %114, i32 %115)
  store i32 %116, i32* %10, align 4
  br label %117

117:                                              ; preds = %111, %109, %72, %66, %35
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_menelaus, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = call i32 @mutex_unlock(i32* %119)
  %121 = load i32, i32* %10, align 4
  store i32 %121, i32* %5, align 4
  br label %122

122:                                              ; preds = %117, %24, %18
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @menelaus_read_reg(i32) #1

declare dso_local i32 @menelaus_write_reg(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
