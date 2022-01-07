; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_alps.c_alps_identify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_alps.c_alps_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.alps_data* }
%struct.alps_data = type { i8*, i32, i32, i32 }

@PSMOUSE_CMD_SETRES = common dso_local global i32 0, align 4
@PSMOUSE_CMD_SETSCALE11 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PSMOUSE_CMD_SETSCALE21 = common dso_local global i32 0, align 4
@PSMOUSE_CMD_RESET_WRAP = common dso_local global i32 0, align 4
@ALPS_PROTO_V5 = common dso_local global i8* null, align 8
@ALPS_PROTO_V3 = common dso_local global i8* null, align 8
@alps_hw_init_rushmore_v3 = common dso_local global i32 0, align 4
@alps_decode_rushmore = common dso_local global i32 0, align 4
@ALPS_REG_BASE_RUSHMORE = common dso_local global i32 0, align 4
@ALPS_DUALPOINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"Unknown ALPS touchpad: E7=%2.2x %2.2x %2.2x, EC=%2.2x %2.2x %2.2x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, %struct.alps_data*)* @alps_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alps_identify(%struct.psmouse* %0, %struct.alps_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psmouse*, align 8
  %5 = alloca %struct.alps_data*, align 8
  %6 = alloca [4 x i8], align 1
  %7 = alloca [4 x i8], align 1
  %8 = alloca [4 x i8], align 1
  store %struct.psmouse* %0, %struct.psmouse** %4, align 8
  store %struct.alps_data* %1, %struct.alps_data** %5, align 8
  %9 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %10 = load i32, i32* @PSMOUSE_CMD_SETRES, align 4
  %11 = load i32, i32* @PSMOUSE_CMD_SETSCALE11, align 4
  %12 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %13 = call i64 @alps_rpt_cmd(%struct.psmouse* %9, i32 %10, i32 %11, i8* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %184

18:                                               ; preds = %2
  %19 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = and i32 %21, 248
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %39, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 2
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp ne i32 %32, 10
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 2
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp ne i32 %37, 100
  br i1 %38, label %39, label %42

39:                                               ; preds = %34, %24, %18
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %184

42:                                               ; preds = %34, %29
  %43 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %44 = load i32, i32* @PSMOUSE_CMD_SETRES, align 4
  %45 = load i32, i32* @PSMOUSE_CMD_SETSCALE21, align 4
  %46 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %47 = call i64 @alps_rpt_cmd(%struct.psmouse* %43, i32 %44, i32 %45, i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %60, label %49

49:                                               ; preds = %42
  %50 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %51 = load i32, i32* @PSMOUSE_CMD_SETRES, align 4
  %52 = load i32, i32* @PSMOUSE_CMD_RESET_WRAP, align 4
  %53 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %54 = call i64 @alps_rpt_cmd(%struct.psmouse* %50, i32 %51, i32 %52, i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %49
  %57 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %58 = call i64 @alps_exit_command_mode(%struct.psmouse* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56, %49, %42
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %184

63:                                               ; preds = %56
  %64 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %65 = load %struct.alps_data*, %struct.alps_data** %5, align 8
  %66 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %67 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %68 = call i64 @alps_match_table(%struct.psmouse* %64, %struct.alps_data* %65, i8* %66, i8* %67)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %184

71:                                               ; preds = %63
  %72 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp eq i32 %74, 115
  br i1 %75, label %76, label %102

76:                                               ; preds = %71
  %77 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 1
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp eq i32 %79, 3
  br i1 %80, label %81, label %102

81:                                               ; preds = %76
  %82 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 2
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = icmp eq i32 %84, 80
  br i1 %85, label %86, label %102

86:                                               ; preds = %81
  %87 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp eq i32 %89, 115
  br i1 %90, label %91, label %102

91:                                               ; preds = %86
  %92 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 1
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load i8*, i8** @ALPS_PROTO_V5, align 8
  %98 = load %struct.alps_data*, %struct.alps_data** %5, align 8
  %99 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %98, i32 0, i32 0
  store i8* %97, i8** %99, align 8
  %100 = load %struct.alps_data*, %struct.alps_data** %5, align 8
  %101 = call i32 @alps_set_defaults(%struct.alps_data* %100)
  store i32 0, i32* %3, align 4
  br label %184

102:                                              ; preds = %91, %86, %81, %76, %71
  %103 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = icmp eq i32 %105, 136
  br i1 %106, label %107, label %139

107:                                              ; preds = %102
  %108 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 1
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = icmp eq i32 %110, 8
  br i1 %111, label %112, label %139

112:                                              ; preds = %107
  %113 = load i8*, i8** @ALPS_PROTO_V3, align 8
  %114 = load %struct.alps_data*, %struct.alps_data** %5, align 8
  %115 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %114, i32 0, i32 0
  store i8* %113, i8** %115, align 8
  %116 = load %struct.alps_data*, %struct.alps_data** %5, align 8
  %117 = call i32 @alps_set_defaults(%struct.alps_data* %116)
  %118 = load i32, i32* @alps_hw_init_rushmore_v3, align 4
  %119 = load %struct.alps_data*, %struct.alps_data** %5, align 8
  %120 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 8
  %121 = load i32, i32* @alps_decode_rushmore, align 4
  %122 = load %struct.alps_data*, %struct.alps_data** %5, align 8
  %123 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 4
  %124 = load %struct.alps_data*, %struct.alps_data** %5, align 8
  %125 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %126 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %125, i32 0, i32 0
  store %struct.alps_data* %124, %struct.alps_data** %126, align 8
  %127 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %128 = load i32, i32* @ALPS_REG_BASE_RUSHMORE, align 4
  %129 = call i64 @alps_probe_trackstick_v3(%struct.psmouse* %127, i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %112
  %132 = load i32, i32* @ALPS_DUALPOINT, align 4
  %133 = xor i32 %132, -1
  %134 = load %struct.alps_data*, %struct.alps_data** %5, align 8
  %135 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = and i32 %136, %133
  store i32 %137, i32* %135, align 8
  br label %138

138:                                              ; preds = %131, %112
  store i32 0, i32* %3, align 4
  br label %184

139:                                              ; preds = %107, %102
  %140 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = icmp eq i32 %142, 136
  br i1 %143, label %144, label %165

144:                                              ; preds = %139
  %145 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 1
  %146 = load i8, i8* %145, align 1
  %147 = zext i8 %146 to i32
  %148 = icmp eq i32 %147, 7
  br i1 %148, label %149, label %165

149:                                              ; preds = %144
  %150 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 2
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = icmp sge i32 %152, 144
  br i1 %153, label %154, label %165

154:                                              ; preds = %149
  %155 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 2
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i32
  %158 = icmp sle i32 %157, 157
  br i1 %158, label %159, label %165

159:                                              ; preds = %154
  %160 = load i8*, i8** @ALPS_PROTO_V3, align 8
  %161 = load %struct.alps_data*, %struct.alps_data** %5, align 8
  %162 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %161, i32 0, i32 0
  store i8* %160, i8** %162, align 8
  %163 = load %struct.alps_data*, %struct.alps_data** %5, align 8
  %164 = call i32 @alps_set_defaults(%struct.alps_data* %163)
  store i32 0, i32* %3, align 4
  br label %184

165:                                              ; preds = %154, %149, %144, %139
  br label %166

166:                                              ; preds = %165
  br label %167

167:                                              ; preds = %166
  br label %168

168:                                              ; preds = %167
  %169 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %170 = load i8, i8* %169, align 1
  %171 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 1
  %172 = load i8, i8* %171, align 1
  %173 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 2
  %174 = load i8, i8* %173, align 1
  %175 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %176 = load i8, i8* %175, align 1
  %177 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 1
  %178 = load i8, i8* %177, align 1
  %179 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 2
  %180 = load i8, i8* %179, align 1
  %181 = call i32 @dbg(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i8 zeroext %170, i8 zeroext %172, i8 zeroext %174, i8 zeroext %176, i8 zeroext %178, i8 zeroext %180)
  %182 = load i32, i32* @EINVAL, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %3, align 4
  br label %184

184:                                              ; preds = %168, %159, %138, %96, %70, %60, %39, %15
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local i64 @alps_rpt_cmd(%struct.psmouse*, i32, i32, i8*) #1

declare dso_local i64 @alps_exit_command_mode(%struct.psmouse*) #1

declare dso_local i64 @alps_match_table(%struct.psmouse*, %struct.alps_data*, i8*, i8*) #1

declare dso_local i32 @alps_set_defaults(%struct.alps_data*) #1

declare dso_local i64 @alps_probe_trackstick_v3(%struct.psmouse*, i32) #1

declare dso_local i32 @dbg(i8*, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
