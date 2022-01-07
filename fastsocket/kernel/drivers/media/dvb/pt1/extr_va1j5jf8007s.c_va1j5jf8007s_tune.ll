; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/pt1/extr_va1j5jf8007s.c_va1j5jf8007s_tune.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/pt1/extr_va1j5jf8007s.c_va1j5jf8007s_tune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.va1j5jf8007s_state* }
%struct.va1j5jf8007s_state = type { i32 }
%struct.dvb_frontend_parameters = type { i32 }

@HZ = common dso_local global i32 0, align 4
@FE_HAS_SIGNAL = common dso_local global i32 0, align 4
@FE_HAS_CARRIER = common dso_local global i32 0, align 4
@FE_HAS_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*, i32, i32*, i32*)* @va1j5jf8007s_tune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @va1j5jf8007s_tune(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dvb_frontend*, align 8
  %8 = alloca %struct.dvb_frontend_parameters*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.va1j5jf8007s_state*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %7, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %16 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %15, i32 0, i32 0
  %17 = load %struct.va1j5jf8007s_state*, %struct.va1j5jf8007s_state** %16, align 8
  store %struct.va1j5jf8007s_state* %17, %struct.va1j5jf8007s_state** %12, align 8
  %18 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %8, align 8
  %19 = icmp ne %struct.dvb_frontend_parameters* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load %struct.va1j5jf8007s_state*, %struct.va1j5jf8007s_state** %12, align 8
  %22 = getelementptr inbounds %struct.va1j5jf8007s_state, %struct.va1j5jf8007s_state* %21, i32 0, i32 0
  store i32 133, i32* %22, align 4
  br label %23

23:                                               ; preds = %20, %5
  %24 = load %struct.va1j5jf8007s_state*, %struct.va1j5jf8007s_state** %12, align 8
  %25 = getelementptr inbounds %struct.va1j5jf8007s_state, %struct.va1j5jf8007s_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %173 [
    i32 134, label %27
    i32 133, label %32
    i32 132, label %44
    i32 131, label %59
    i32 137, label %71
    i32 130, label %93
    i32 136, label %106
    i32 129, label %131
    i32 135, label %141
    i32 128, label %163
  ]

27:                                               ; preds = %23
  %28 = load i32, i32* @HZ, align 4
  %29 = mul nsw i32 3, %28
  %30 = load i32*, i32** %10, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32*, i32** %11, align 8
  store i32 0, i32* %31, align 4
  store i32 0, i32* %6, align 4
  br label %175

32:                                               ; preds = %23
  %33 = load %struct.va1j5jf8007s_state*, %struct.va1j5jf8007s_state** %12, align 8
  %34 = call i32 @va1j5jf8007s_set_frequency_1(%struct.va1j5jf8007s_state* %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %6, align 4
  br label %175

39:                                               ; preds = %32
  %40 = load %struct.va1j5jf8007s_state*, %struct.va1j5jf8007s_state** %12, align 8
  %41 = getelementptr inbounds %struct.va1j5jf8007s_state, %struct.va1j5jf8007s_state* %40, i32 0, i32 0
  store i32 132, i32* %41, align 4
  %42 = load i32*, i32** %10, align 8
  store i32 0, i32* %42, align 4
  %43 = load i32*, i32** %11, align 8
  store i32 0, i32* %43, align 4
  store i32 0, i32* %6, align 4
  br label %175

44:                                               ; preds = %23
  %45 = load %struct.va1j5jf8007s_state*, %struct.va1j5jf8007s_state** %12, align 8
  %46 = call i32 @va1j5jf8007s_set_frequency_2(%struct.va1j5jf8007s_state* %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* %13, align 4
  store i32 %50, i32* %6, align 4
  br label %175

51:                                               ; preds = %44
  %52 = load %struct.va1j5jf8007s_state*, %struct.va1j5jf8007s_state** %12, align 8
  %53 = getelementptr inbounds %struct.va1j5jf8007s_state, %struct.va1j5jf8007s_state* %52, i32 0, i32 0
  store i32 131, i32* %53, align 4
  %54 = load i32, i32* @HZ, align 4
  %55 = add nsw i32 %54, 99
  %56 = sdiv i32 %55, 100
  %57 = load i32*, i32** %10, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32*, i32** %11, align 8
  store i32 0, i32* %58, align 4
  store i32 0, i32* %6, align 4
  br label %175

59:                                               ; preds = %23
  %60 = load %struct.va1j5jf8007s_state*, %struct.va1j5jf8007s_state** %12, align 8
  %61 = call i32 @va1j5jf8007s_set_frequency_3(%struct.va1j5jf8007s_state* %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* %13, align 4
  store i32 %65, i32* %6, align 4
  br label %175

66:                                               ; preds = %59
  %67 = load %struct.va1j5jf8007s_state*, %struct.va1j5jf8007s_state** %12, align 8
  %68 = getelementptr inbounds %struct.va1j5jf8007s_state, %struct.va1j5jf8007s_state* %67, i32 0, i32 0
  store i32 137, i32* %68, align 4
  %69 = load i32*, i32** %10, align 8
  store i32 0, i32* %69, align 4
  %70 = load i32*, i32** %11, align 8
  store i32 0, i32* %70, align 4
  store i32 0, i32* %6, align 4
  br label %175

71:                                               ; preds = %23
  %72 = load %struct.va1j5jf8007s_state*, %struct.va1j5jf8007s_state** %12, align 8
  %73 = call i32 @va1j5jf8007s_check_frequency(%struct.va1j5jf8007s_state* %72, i32* %14)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i32, i32* %13, align 4
  store i32 %77, i32* %6, align 4
  br label %175

78:                                               ; preds = %71
  %79 = load i32, i32* %14, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* @HZ, align 4
  %83 = add nsw i32 %82, 999
  %84 = sdiv i32 %83, 1000
  %85 = load i32*, i32** %10, align 8
  store i32 %84, i32* %85, align 4
  %86 = load i32*, i32** %11, align 8
  store i32 0, i32* %86, align 4
  store i32 0, i32* %6, align 4
  br label %175

87:                                               ; preds = %78
  %88 = load %struct.va1j5jf8007s_state*, %struct.va1j5jf8007s_state** %12, align 8
  %89 = getelementptr inbounds %struct.va1j5jf8007s_state, %struct.va1j5jf8007s_state* %88, i32 0, i32 0
  store i32 130, i32* %89, align 4
  %90 = load i32*, i32** %10, align 8
  store i32 0, i32* %90, align 4
  %91 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %92 = load i32*, i32** %11, align 8
  store i32 %91, i32* %92, align 4
  store i32 0, i32* %6, align 4
  br label %175

93:                                               ; preds = %23
  %94 = load %struct.va1j5jf8007s_state*, %struct.va1j5jf8007s_state** %12, align 8
  %95 = call i32 @va1j5jf8007s_set_modulation(%struct.va1j5jf8007s_state* %94)
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %13, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = load i32, i32* %13, align 4
  store i32 %99, i32* %6, align 4
  br label %175

100:                                              ; preds = %93
  %101 = load %struct.va1j5jf8007s_state*, %struct.va1j5jf8007s_state** %12, align 8
  %102 = getelementptr inbounds %struct.va1j5jf8007s_state, %struct.va1j5jf8007s_state* %101, i32 0, i32 0
  store i32 136, i32* %102, align 4
  %103 = load i32*, i32** %10, align 8
  store i32 0, i32* %103, align 4
  %104 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %105 = load i32*, i32** %11, align 8
  store i32 %104, i32* %105, align 4
  store i32 0, i32* %6, align 4
  br label %175

106:                                              ; preds = %23
  %107 = load %struct.va1j5jf8007s_state*, %struct.va1j5jf8007s_state** %12, align 8
  %108 = call i32 @va1j5jf8007s_check_modulation(%struct.va1j5jf8007s_state* %107, i32* %14)
  store i32 %108, i32* %13, align 4
  %109 = load i32, i32* %13, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = load i32, i32* %13, align 4
  store i32 %112, i32* %6, align 4
  br label %175

113:                                              ; preds = %106
  %114 = load i32, i32* %14, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %123, label %116

116:                                              ; preds = %113
  %117 = load i32, i32* @HZ, align 4
  %118 = add nsw i32 %117, 49
  %119 = sdiv i32 %118, 50
  %120 = load i32*, i32** %10, align 8
  store i32 %119, i32* %120, align 4
  %121 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %122 = load i32*, i32** %11, align 8
  store i32 %121, i32* %122, align 4
  store i32 0, i32* %6, align 4
  br label %175

123:                                              ; preds = %113
  %124 = load %struct.va1j5jf8007s_state*, %struct.va1j5jf8007s_state** %12, align 8
  %125 = getelementptr inbounds %struct.va1j5jf8007s_state, %struct.va1j5jf8007s_state* %124, i32 0, i32 0
  store i32 129, i32* %125, align 4
  %126 = load i32*, i32** %10, align 8
  store i32 0, i32* %126, align 4
  %127 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %128 = load i32, i32* @FE_HAS_CARRIER, align 4
  %129 = or i32 %127, %128
  %130 = load i32*, i32** %11, align 8
  store i32 %129, i32* %130, align 4
  store i32 0, i32* %6, align 4
  br label %175

131:                                              ; preds = %23
  %132 = load %struct.va1j5jf8007s_state*, %struct.va1j5jf8007s_state** %12, align 8
  %133 = call i32 @va1j5jf8007s_set_ts_id(%struct.va1j5jf8007s_state* %132)
  store i32 %133, i32* %13, align 4
  %134 = load i32, i32* %13, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %131
  %137 = load i32, i32* %13, align 4
  store i32 %137, i32* %6, align 4
  br label %175

138:                                              ; preds = %131
  %139 = load %struct.va1j5jf8007s_state*, %struct.va1j5jf8007s_state** %12, align 8
  %140 = getelementptr inbounds %struct.va1j5jf8007s_state, %struct.va1j5jf8007s_state* %139, i32 0, i32 0
  store i32 135, i32* %140, align 4
  store i32 0, i32* %6, align 4
  br label %175

141:                                              ; preds = %23
  %142 = load %struct.va1j5jf8007s_state*, %struct.va1j5jf8007s_state** %12, align 8
  %143 = call i32 @va1j5jf8007s_check_ts_id(%struct.va1j5jf8007s_state* %142, i32* %14)
  store i32 %143, i32* %13, align 4
  %144 = load i32, i32* %13, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %141
  %147 = load i32, i32* %13, align 4
  store i32 %147, i32* %6, align 4
  br label %175

148:                                              ; preds = %141
  %149 = load i32, i32* %14, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %160, label %151

151:                                              ; preds = %148
  %152 = load i32, i32* @HZ, align 4
  %153 = add nsw i32 %152, 99
  %154 = sdiv i32 %153, 100
  %155 = load i32*, i32** %10, align 8
  store i32 %154, i32* %155, align 4
  %156 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %157 = load i32, i32* @FE_HAS_CARRIER, align 4
  %158 = or i32 %156, %157
  %159 = load i32*, i32** %11, align 8
  store i32 %158, i32* %159, align 4
  store i32 0, i32* %6, align 4
  br label %175

160:                                              ; preds = %148
  %161 = load %struct.va1j5jf8007s_state*, %struct.va1j5jf8007s_state** %12, align 8
  %162 = getelementptr inbounds %struct.va1j5jf8007s_state, %struct.va1j5jf8007s_state* %161, i32 0, i32 0
  store i32 128, i32* %162, align 4
  br label %163

163:                                              ; preds = %23, %160
  %164 = load i32, i32* @HZ, align 4
  %165 = mul nsw i32 3, %164
  %166 = load i32*, i32** %10, align 8
  store i32 %165, i32* %166, align 4
  %167 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %168 = load i32, i32* @FE_HAS_CARRIER, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* @FE_HAS_LOCK, align 4
  %171 = or i32 %169, %170
  %172 = load i32*, i32** %11, align 8
  store i32 %171, i32* %172, align 4
  store i32 0, i32* %6, align 4
  br label %175

173:                                              ; preds = %23
  %174 = call i32 (...) @BUG()
  br label %175

175:                                              ; preds = %173, %163, %151, %146, %138, %136, %123, %116, %111, %100, %98, %87, %81, %76, %66, %64, %51, %49, %39, %37, %27
  %176 = load i32, i32* %6, align 4
  ret i32 %176
}

declare dso_local i32 @va1j5jf8007s_set_frequency_1(%struct.va1j5jf8007s_state*) #1

declare dso_local i32 @va1j5jf8007s_set_frequency_2(%struct.va1j5jf8007s_state*) #1

declare dso_local i32 @va1j5jf8007s_set_frequency_3(%struct.va1j5jf8007s_state*) #1

declare dso_local i32 @va1j5jf8007s_check_frequency(%struct.va1j5jf8007s_state*, i32*) #1

declare dso_local i32 @va1j5jf8007s_set_modulation(%struct.va1j5jf8007s_state*) #1

declare dso_local i32 @va1j5jf8007s_check_modulation(%struct.va1j5jf8007s_state*, i32*) #1

declare dso_local i32 @va1j5jf8007s_set_ts_id(%struct.va1j5jf8007s_state*) #1

declare dso_local i32 @va1j5jf8007s_check_ts_id(%struct.va1j5jf8007s_state*, i32*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
