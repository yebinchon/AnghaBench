; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-core.c_input_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-core.c_input_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.cx25840_state = type { i32, i32, i64 }

@V4L2_STD_SECAM = common dso_local global i32 0, align 4
@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@V4L2_STD_NTSC_M_JP = common dso_local global i32 0, align 4
@V4L2_STD_NTSC_M_KR = common dso_local global i32 0, align 4
@V4L2_STD_PAL = common dso_local global i32 0, align 4
@V4L2_STD_SECAM_DK = common dso_local global i32 0, align 4
@V4L2_STD_SECAM_L = common dso_local global i32 0, align 4
@V4L2_STD_SECAM_LC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @input_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @input_change(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.cx25840_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %7 = call i32 @i2c_get_clientdata(%struct.i2c_client* %6)
  %8 = call %struct.cx25840_state* @to_state(i32 %7)
  store %struct.cx25840_state* %8, %struct.cx25840_state** %3, align 8
  %9 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %10 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @V4L2_STD_SECAM, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %18 = call i32 @cx25840_write(%struct.i2c_client* %17, i32 1026, i32 0)
  br label %30

19:                                               ; preds = %1
  %20 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %21 = call i32 @cx25840_write(%struct.i2c_client* %20, i32 1026, i32 4)
  %22 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @V4L2_STD_NTSC, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 20, i32 17
  %29 = call i32 @cx25840_write(%struct.i2c_client* %22, i32 1183, i32 %28)
  br label %30

30:                                               ; preds = %19, %16
  %31 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %32 = call i32 @cx25840_and_or(%struct.i2c_client* %31, i32 1025, i32 -97, i32 0)
  %33 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %34 = call i32 @cx25840_and_or(%struct.i2c_client* %33, i32 1025, i32 -97, i32 96)
  %35 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %36 = call i64 @is_cx2583x(%struct.cx25840_state* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %150

39:                                               ; preds = %30
  %40 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %41 = call i32 @cx25840_and_or(%struct.i2c_client* %40, i32 2064, i32 -2, i32 1)
  %42 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %43 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %48 = call i32 @cx25840_write(%struct.i2c_client* %47, i32 2056, i32 249)
  %49 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %50 = call i32 @cx25840_write(%struct.i2c_client* %49, i32 2059, i32 0)
  br label %147

51:                                               ; preds = %39
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @V4L2_STD_525_60, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %92

56:                                               ; preds = %51
  %57 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %58 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @V4L2_STD_NTSC_M_JP, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %56
  %64 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 47, i32 247
  %69 = call i32 @cx25840_write(%struct.i2c_client* %64, i32 2056, i32 %68)
  br label %89

70:                                               ; preds = %56
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @V4L2_STD_NTSC_M_KR, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %70
  %75 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 63, i32 248
  %80 = call i32 @cx25840_write(%struct.i2c_client* %75, i32 2056, i32 %79)
  br label %88

81:                                               ; preds = %70
  %82 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 31, i32 246
  %87 = call i32 @cx25840_write(%struct.i2c_client* %82, i32 2056, i32 %86)
  br label %88

88:                                               ; preds = %81, %74
  br label %89

89:                                               ; preds = %88, %63
  %90 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %91 = call i32 @cx25840_write(%struct.i2c_client* %90, i32 2059, i32 0)
  br label %146

92:                                               ; preds = %51
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @V4L2_STD_PAL, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %99 = call i32 @cx25840_write(%struct.i2c_client* %98, i32 2056, i32 255)
  %100 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %101 = call i32 @cx25840_write(%struct.i2c_client* %100, i32 2059, i32 0)
  br label %145

102:                                              ; preds = %92
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* @V4L2_STD_SECAM, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %144

107:                                              ; preds = %102
  %108 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %109 = call i32 @cx25840_write(%struct.i2c_client* %108, i32 2056, i32 255)
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* @V4L2_STD_SECAM_DK, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %107
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* @V4L2_STD_SECAM_L, align 4
  %117 = load i32, i32* @V4L2_STD_SECAM_LC, align 4
  %118 = or i32 %116, %117
  %119 = and i32 %115, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %114
  %122 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %123 = call i32 @cx25840_write(%struct.i2c_client* %122, i32 2059, i32 0)
  br label %143

124:                                              ; preds = %114, %107
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* @V4L2_STD_SECAM_DK, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %139, label %129

129:                                              ; preds = %124
  %130 = load i32, i32* %4, align 4
  %131 = load i32, i32* @V4L2_STD_SECAM_L, align 4
  %132 = load i32, i32* @V4L2_STD_SECAM_LC, align 4
  %133 = or i32 %131, %132
  %134 = and i32 %130, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %129
  %137 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %138 = call i32 @cx25840_write(%struct.i2c_client* %137, i32 2059, i32 8)
  br label %142

139:                                              ; preds = %129, %124
  %140 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %141 = call i32 @cx25840_write(%struct.i2c_client* %140, i32 2059, i32 16)
  br label %142

142:                                              ; preds = %139, %136
  br label %143

143:                                              ; preds = %142, %121
  br label %144

144:                                              ; preds = %143, %102
  br label %145

145:                                              ; preds = %144, %97
  br label %146

146:                                              ; preds = %145, %89
  br label %147

147:                                              ; preds = %146, %46
  %148 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %149 = call i32 @cx25840_and_or(%struct.i2c_client* %148, i32 2064, i32 -2, i32 0)
  br label %150

150:                                              ; preds = %147, %38
  ret void
}

declare dso_local %struct.cx25840_state* @to_state(i32) #1

declare dso_local i32 @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @cx25840_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @cx25840_and_or(%struct.i2c_client*, i32, i32, i32) #1

declare dso_local i64 @is_cx2583x(%struct.cx25840_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
