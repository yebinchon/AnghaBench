; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_mxl5007t.c_mxl5007t_set_xtal_freq_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_mxl5007t.c_mxl5007t_set_xtal_freq_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxl5007t_state = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxl5007t_state*, i32)* @mxl5007t_set_xtal_freq_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxl5007t_set_xtal_freq_bits(%struct.mxl5007t_state* %0, i32 %1) #0 {
  %3 = alloca %struct.mxl5007t_state*, align 8
  %4 = alloca i32, align 4
  store %struct.mxl5007t_state* %0, %struct.mxl5007t_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %132 [
    i32 141, label %6
    i32 138, label %15
    i32 140, label %24
    i32 139, label %33
    i32 137, label %42
    i32 135, label %51
    i32 136, label %60
    i32 134, label %69
    i32 133, label %78
    i32 132, label %87
    i32 131, label %96
    i32 130, label %105
    i32 129, label %114
    i32 128, label %123
  ]

6:                                                ; preds = %2
  %7 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %3, align 8
  %8 = getelementptr inbounds %struct.mxl5007t_state, %struct.mxl5007t_state* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @set_reg_bits(i32 %9, i32 3, i32 240, i32 0)
  %11 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %3, align 8
  %12 = getelementptr inbounds %struct.mxl5007t_state, %struct.mxl5007t_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @set_reg_bits(i32 %13, i32 5, i32 15, i32 0)
  br label %136

15:                                               ; preds = %2
  %16 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %3, align 8
  %17 = getelementptr inbounds %struct.mxl5007t_state, %struct.mxl5007t_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @set_reg_bits(i32 %18, i32 3, i32 240, i32 16)
  %20 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %3, align 8
  %21 = getelementptr inbounds %struct.mxl5007t_state, %struct.mxl5007t_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @set_reg_bits(i32 %22, i32 5, i32 15, i32 1)
  br label %136

24:                                               ; preds = %2
  %25 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %3, align 8
  %26 = getelementptr inbounds %struct.mxl5007t_state, %struct.mxl5007t_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @set_reg_bits(i32 %27, i32 3, i32 240, i32 32)
  %29 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %3, align 8
  %30 = getelementptr inbounds %struct.mxl5007t_state, %struct.mxl5007t_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @set_reg_bits(i32 %31, i32 5, i32 15, i32 2)
  br label %136

33:                                               ; preds = %2
  %34 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %3, align 8
  %35 = getelementptr inbounds %struct.mxl5007t_state, %struct.mxl5007t_state* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @set_reg_bits(i32 %36, i32 3, i32 240, i32 48)
  %38 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %3, align 8
  %39 = getelementptr inbounds %struct.mxl5007t_state, %struct.mxl5007t_state* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @set_reg_bits(i32 %40, i32 5, i32 15, i32 3)
  br label %136

42:                                               ; preds = %2
  %43 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %3, align 8
  %44 = getelementptr inbounds %struct.mxl5007t_state, %struct.mxl5007t_state* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @set_reg_bits(i32 %45, i32 3, i32 240, i32 64)
  %47 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %3, align 8
  %48 = getelementptr inbounds %struct.mxl5007t_state, %struct.mxl5007t_state* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @set_reg_bits(i32 %49, i32 5, i32 15, i32 4)
  br label %136

51:                                               ; preds = %2
  %52 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %3, align 8
  %53 = getelementptr inbounds %struct.mxl5007t_state, %struct.mxl5007t_state* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @set_reg_bits(i32 %54, i32 3, i32 240, i32 80)
  %56 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %3, align 8
  %57 = getelementptr inbounds %struct.mxl5007t_state, %struct.mxl5007t_state* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @set_reg_bits(i32 %58, i32 5, i32 15, i32 5)
  br label %136

60:                                               ; preds = %2
  %61 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %3, align 8
  %62 = getelementptr inbounds %struct.mxl5007t_state, %struct.mxl5007t_state* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @set_reg_bits(i32 %63, i32 3, i32 240, i32 96)
  %65 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %3, align 8
  %66 = getelementptr inbounds %struct.mxl5007t_state, %struct.mxl5007t_state* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @set_reg_bits(i32 %67, i32 5, i32 15, i32 6)
  br label %136

69:                                               ; preds = %2
  %70 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %3, align 8
  %71 = getelementptr inbounds %struct.mxl5007t_state, %struct.mxl5007t_state* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @set_reg_bits(i32 %72, i32 3, i32 240, i32 112)
  %74 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %3, align 8
  %75 = getelementptr inbounds %struct.mxl5007t_state, %struct.mxl5007t_state* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @set_reg_bits(i32 %76, i32 5, i32 15, i32 7)
  br label %136

78:                                               ; preds = %2
  %79 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %3, align 8
  %80 = getelementptr inbounds %struct.mxl5007t_state, %struct.mxl5007t_state* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @set_reg_bits(i32 %81, i32 3, i32 240, i32 128)
  %83 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %3, align 8
  %84 = getelementptr inbounds %struct.mxl5007t_state, %struct.mxl5007t_state* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @set_reg_bits(i32 %85, i32 5, i32 15, i32 8)
  br label %136

87:                                               ; preds = %2
  %88 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %3, align 8
  %89 = getelementptr inbounds %struct.mxl5007t_state, %struct.mxl5007t_state* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @set_reg_bits(i32 %90, i32 3, i32 240, i32 144)
  %92 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %3, align 8
  %93 = getelementptr inbounds %struct.mxl5007t_state, %struct.mxl5007t_state* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @set_reg_bits(i32 %94, i32 5, i32 15, i32 9)
  br label %136

96:                                               ; preds = %2
  %97 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %3, align 8
  %98 = getelementptr inbounds %struct.mxl5007t_state, %struct.mxl5007t_state* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @set_reg_bits(i32 %99, i32 3, i32 240, i32 160)
  %101 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %3, align 8
  %102 = getelementptr inbounds %struct.mxl5007t_state, %struct.mxl5007t_state* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @set_reg_bits(i32 %103, i32 5, i32 15, i32 10)
  br label %136

105:                                              ; preds = %2
  %106 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %3, align 8
  %107 = getelementptr inbounds %struct.mxl5007t_state, %struct.mxl5007t_state* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @set_reg_bits(i32 %108, i32 3, i32 240, i32 176)
  %110 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %3, align 8
  %111 = getelementptr inbounds %struct.mxl5007t_state, %struct.mxl5007t_state* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @set_reg_bits(i32 %112, i32 5, i32 15, i32 11)
  br label %136

114:                                              ; preds = %2
  %115 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %3, align 8
  %116 = getelementptr inbounds %struct.mxl5007t_state, %struct.mxl5007t_state* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @set_reg_bits(i32 %117, i32 3, i32 240, i32 192)
  %119 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %3, align 8
  %120 = getelementptr inbounds %struct.mxl5007t_state, %struct.mxl5007t_state* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @set_reg_bits(i32 %121, i32 5, i32 15, i32 12)
  br label %136

123:                                              ; preds = %2
  %124 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %3, align 8
  %125 = getelementptr inbounds %struct.mxl5007t_state, %struct.mxl5007t_state* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @set_reg_bits(i32 %126, i32 3, i32 240, i32 208)
  %128 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %3, align 8
  %129 = getelementptr inbounds %struct.mxl5007t_state, %struct.mxl5007t_state* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @set_reg_bits(i32 %130, i32 5, i32 15, i32 13)
  br label %136

132:                                              ; preds = %2
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  %135 = call i32 @mxl_fail(i32 %134)
  br label %137

136:                                              ; preds = %123, %114, %105, %96, %87, %78, %69, %60, %51, %42, %33, %24, %15, %6
  br label %137

137:                                              ; preds = %136, %132
  ret void
}

declare dso_local i32 @set_reg_bits(i32, i32, i32, i32) #1

declare dso_local i32 @mxl_fail(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
