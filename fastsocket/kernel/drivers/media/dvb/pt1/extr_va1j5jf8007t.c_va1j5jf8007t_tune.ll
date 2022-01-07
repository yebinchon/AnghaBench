; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/pt1/extr_va1j5jf8007t.c_va1j5jf8007t_tune.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/pt1/extr_va1j5jf8007t.c_va1j5jf8007t_tune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.va1j5jf8007t_state* }
%struct.va1j5jf8007t_state = type { i32 }
%struct.dvb_frontend_parameters = type { i32 }

@HZ = common dso_local global i32 0, align 4
@FE_HAS_SIGNAL = common dso_local global i32 0, align 4
@FE_HAS_CARRIER = common dso_local global i32 0, align 4
@FE_HAS_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*, i32, i32*, i32*)* @va1j5jf8007t_tune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @va1j5jf8007t_tune(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dvb_frontend*, align 8
  %8 = alloca %struct.dvb_frontend_parameters*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.va1j5jf8007t_state*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %7, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %17 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %16, i32 0, i32 0
  %18 = load %struct.va1j5jf8007t_state*, %struct.va1j5jf8007t_state** %17, align 8
  store %struct.va1j5jf8007t_state* %18, %struct.va1j5jf8007t_state** %12, align 8
  %19 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %8, align 8
  %20 = icmp ne %struct.dvb_frontend_parameters* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load %struct.va1j5jf8007t_state*, %struct.va1j5jf8007t_state** %12, align 8
  %23 = getelementptr inbounds %struct.va1j5jf8007t_state, %struct.va1j5jf8007t_state* %22, i32 0, i32 0
  store i32 130, i32* %23, align 4
  br label %24

24:                                               ; preds = %21, %5
  %25 = load %struct.va1j5jf8007t_state*, %struct.va1j5jf8007t_state** %12, align 8
  %26 = getelementptr inbounds %struct.va1j5jf8007t_state, %struct.va1j5jf8007t_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %127 [
    i32 131, label %28
    i32 130, label %33
    i32 133, label %45
    i32 129, label %67
    i32 132, label %80
    i32 128, label %111
    i32 134, label %121
  ]

28:                                               ; preds = %24
  %29 = load i32, i32* @HZ, align 4
  %30 = mul nsw i32 3, %29
  %31 = load i32*, i32** %10, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32*, i32** %11, align 8
  store i32 0, i32* %32, align 4
  store i32 0, i32* %6, align 4
  br label %129

33:                                               ; preds = %24
  %34 = load %struct.va1j5jf8007t_state*, %struct.va1j5jf8007t_state** %12, align 8
  %35 = call i32 @va1j5jf8007t_set_frequency(%struct.va1j5jf8007t_state* %34)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %13, align 4
  store i32 %39, i32* %6, align 4
  br label %129

40:                                               ; preds = %33
  %41 = load %struct.va1j5jf8007t_state*, %struct.va1j5jf8007t_state** %12, align 8
  %42 = getelementptr inbounds %struct.va1j5jf8007t_state, %struct.va1j5jf8007t_state* %41, i32 0, i32 0
  store i32 133, i32* %42, align 4
  %43 = load i32*, i32** %10, align 8
  store i32 0, i32* %43, align 4
  %44 = load i32*, i32** %11, align 8
  store i32 0, i32* %44, align 4
  store i32 0, i32* %6, align 4
  br label %129

45:                                               ; preds = %24
  %46 = load %struct.va1j5jf8007t_state*, %struct.va1j5jf8007t_state** %12, align 8
  %47 = call i32 @va1j5jf8007t_check_frequency(%struct.va1j5jf8007t_state* %46, i32* %14)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %13, align 4
  store i32 %51, i32* %6, align 4
  br label %129

52:                                               ; preds = %45
  %53 = load i32, i32* %14, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* @HZ, align 4
  %57 = add nsw i32 %56, 999
  %58 = sdiv i32 %57, 1000
  %59 = load i32*, i32** %10, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i32*, i32** %11, align 8
  store i32 0, i32* %60, align 4
  store i32 0, i32* %6, align 4
  br label %129

61:                                               ; preds = %52
  %62 = load %struct.va1j5jf8007t_state*, %struct.va1j5jf8007t_state** %12, align 8
  %63 = getelementptr inbounds %struct.va1j5jf8007t_state, %struct.va1j5jf8007t_state* %62, i32 0, i32 0
  store i32 129, i32* %63, align 4
  %64 = load i32*, i32** %10, align 8
  store i32 0, i32* %64, align 4
  %65 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %66 = load i32*, i32** %11, align 8
  store i32 %65, i32* %66, align 4
  store i32 0, i32* %6, align 4
  br label %129

67:                                               ; preds = %24
  %68 = load %struct.va1j5jf8007t_state*, %struct.va1j5jf8007t_state** %12, align 8
  %69 = call i32 @va1j5jf8007t_set_modulation(%struct.va1j5jf8007t_state* %68)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* %13, align 4
  store i32 %73, i32* %6, align 4
  br label %129

74:                                               ; preds = %67
  %75 = load %struct.va1j5jf8007t_state*, %struct.va1j5jf8007t_state** %12, align 8
  %76 = getelementptr inbounds %struct.va1j5jf8007t_state, %struct.va1j5jf8007t_state* %75, i32 0, i32 0
  store i32 132, i32* %76, align 4
  %77 = load i32*, i32** %10, align 8
  store i32 0, i32* %77, align 4
  %78 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %79 = load i32*, i32** %11, align 8
  store i32 %78, i32* %79, align 4
  store i32 0, i32* %6, align 4
  br label %129

80:                                               ; preds = %24
  %81 = load %struct.va1j5jf8007t_state*, %struct.va1j5jf8007t_state** %12, align 8
  %82 = call i32 @va1j5jf8007t_check_modulation(%struct.va1j5jf8007t_state* %81, i32* %14, i32* %15)
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %13, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* %13, align 4
  store i32 %86, i32* %6, align 4
  br label %129

87:                                               ; preds = %80
  %88 = load i32, i32* %14, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %108, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %15, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %101, label %93

93:                                               ; preds = %90
  %94 = load %struct.va1j5jf8007t_state*, %struct.va1j5jf8007t_state** %12, align 8
  %95 = getelementptr inbounds %struct.va1j5jf8007t_state, %struct.va1j5jf8007t_state* %94, i32 0, i32 0
  store i32 134, i32* %95, align 4
  %96 = load i32, i32* @HZ, align 4
  %97 = mul nsw i32 3, %96
  %98 = load i32*, i32** %10, align 8
  store i32 %97, i32* %98, align 4
  %99 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %100 = load i32*, i32** %11, align 8
  store i32 %99, i32* %100, align 4
  store i32 0, i32* %6, align 4
  br label %129

101:                                              ; preds = %90
  %102 = load i32, i32* @HZ, align 4
  %103 = add nsw i32 %102, 999
  %104 = sdiv i32 %103, 1000
  %105 = load i32*, i32** %10, align 8
  store i32 %104, i32* %105, align 4
  %106 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %107 = load i32*, i32** %11, align 8
  store i32 %106, i32* %107, align 4
  store i32 0, i32* %6, align 4
  br label %129

108:                                              ; preds = %87
  %109 = load %struct.va1j5jf8007t_state*, %struct.va1j5jf8007t_state** %12, align 8
  %110 = getelementptr inbounds %struct.va1j5jf8007t_state, %struct.va1j5jf8007t_state* %109, i32 0, i32 0
  store i32 128, i32* %110, align 4
  br label %111

111:                                              ; preds = %24, %108
  %112 = load i32, i32* @HZ, align 4
  %113 = mul nsw i32 3, %112
  %114 = load i32*, i32** %10, align 8
  store i32 %113, i32* %114, align 4
  %115 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %116 = load i32, i32* @FE_HAS_CARRIER, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @FE_HAS_LOCK, align 4
  %119 = or i32 %117, %118
  %120 = load i32*, i32** %11, align 8
  store i32 %119, i32* %120, align 4
  store i32 0, i32* %6, align 4
  br label %129

121:                                              ; preds = %24
  %122 = load i32, i32* @HZ, align 4
  %123 = mul nsw i32 3, %122
  %124 = load i32*, i32** %10, align 8
  store i32 %123, i32* %124, align 4
  %125 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %126 = load i32*, i32** %11, align 8
  store i32 %125, i32* %126, align 4
  store i32 0, i32* %6, align 4
  br label %129

127:                                              ; preds = %24
  %128 = call i32 (...) @BUG()
  br label %129

129:                                              ; preds = %127, %121, %111, %101, %93, %85, %74, %72, %61, %55, %50, %40, %38, %28
  %130 = load i32, i32* %6, align 4
  ret i32 %130
}

declare dso_local i32 @va1j5jf8007t_set_frequency(%struct.va1j5jf8007t_state*) #1

declare dso_local i32 @va1j5jf8007t_check_frequency(%struct.va1j5jf8007t_state*, i32*) #1

declare dso_local i32 @va1j5jf8007t_set_modulation(%struct.va1j5jf8007t_state*) #1

declare dso_local i32 @va1j5jf8007t_check_modulation(%struct.va1j5jf8007t_state*, i32*, i32*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
