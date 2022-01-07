; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_af9013.c_af9013_read_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_af9013.c_af9013_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.af9013_state* }
%struct.af9013_state = type { i32 }

@FE_HAS_SIGNAL = common dso_local global i32 0, align 4
@FE_HAS_CARRIER = common dso_local global i32 0, align 4
@FE_HAS_VITERBI = common dso_local global i32 0, align 4
@FE_HAS_SYNC = common dso_local global i32 0, align 4
@FE_HAS_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @af9013_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9013_read_status(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.af9013_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.af9013_state*, %struct.af9013_state** %9, align 8
  store %struct.af9013_state* %10, %struct.af9013_state** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load i32*, i32** %4, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.af9013_state*, %struct.af9013_state** %5, align 8
  %13 = call i32 @af9013_read_reg_bits(%struct.af9013_state* %12, i32 54535, i32 6, i32 1, i64* %7)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %120

17:                                               ; preds = %2
  %18 = load i64, i64* %7, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %17
  %21 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %22 = load i32, i32* @FE_HAS_CARRIER, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @FE_HAS_VITERBI, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @FE_HAS_SYNC, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @FE_HAS_LOCK, align 4
  %29 = or i32 %27, %28
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %29
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %20, %17
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %56, label %37

37:                                               ; preds = %33
  %38 = load %struct.af9013_state*, %struct.af9013_state** %5, align 8
  %39 = call i32 @af9013_read_reg_bits(%struct.af9013_state* %38, i32 54064, i32 3, i32 1, i64* %7)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %120

43:                                               ; preds = %37
  %44 = load i64, i64* %7, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %48 = load i32, i32* @FE_HAS_CARRIER, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @FE_HAS_VITERBI, align 4
  %51 = or i32 %49, %50
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %51
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %46, %43
  br label %56

56:                                               ; preds = %55, %33
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %77, label %60

60:                                               ; preds = %56
  %61 = load %struct.af9013_state*, %struct.af9013_state** %5, align 8
  %62 = call i32 @af9013_read_reg_bits(%struct.af9013_state* %61, i32 54067, i32 7, i32 1, i64* %7)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %120

66:                                               ; preds = %60
  %67 = load i64, i64* %7, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %71 = load i32, i32* @FE_HAS_CARRIER, align 4
  %72 = or i32 %70, %71
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %72
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %69, %66
  br label %77

77:                                               ; preds = %76, %56
  %78 = load i32*, i32** %4, align 8
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %98, label %81

81:                                               ; preds = %77
  %82 = load %struct.af9013_state*, %struct.af9013_state** %5, align 8
  %83 = call i32 @af9013_read_reg_bits(%struct.af9013_state* %82, i32 54068, i32 6, i32 1, i64* %7)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %120

87:                                               ; preds = %81
  %88 = load i64, i64* %7, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %92 = load i32, i32* @FE_HAS_CARRIER, align 4
  %93 = or i32 %91, %92
  %94 = load i32*, i32** %4, align 8
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %93
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %90, %87
  br label %98

98:                                               ; preds = %97, %77
  %99 = load i32*, i32** %4, align 8
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %117, label %102

102:                                              ; preds = %98
  %103 = load %struct.af9013_state*, %struct.af9013_state** %5, align 8
  %104 = call i32 @af9013_read_reg_bits(%struct.af9013_state* %103, i32 53664, i32 6, i32 1, i64* %7)
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %120

108:                                              ; preds = %102
  %109 = load i64, i64* %7, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %113 = load i32*, i32** %4, align 8
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %112
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %111, %108
  br label %117

117:                                              ; preds = %116, %98
  %118 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %119 = call i32 @af9013_update_statistics(%struct.dvb_frontend* %118)
  store i32 %119, i32* %6, align 4
  br label %120

120:                                              ; preds = %117, %107, %86, %65, %42, %16
  %121 = load i32, i32* %6, align 4
  ret i32 %121
}

declare dso_local i32 @af9013_read_reg_bits(%struct.af9013_state*, i32, i32, i32, i64*) #1

declare dso_local i32 @af9013_update_statistics(%struct.dvb_frontend*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
