; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_thinkpad_acpi.c_volume_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_thinkpad_acpi.c_volume_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@volume_offset = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"level %d\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"mute\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TP_CMOS_VOLUME_UP = common dso_local global i32 0, align 4
@TP_CMOS_VOLUME_DOWN = common dso_local global i32 0, align 4
@TP_CMOS_VOLUME_MUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @volume_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @volume_write(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  br label %12

12:                                               ; preds = %187, %1
  %13 = call i8* @next_cmd(i8** %3)
  store i8* %13, i8** %11, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %188

15:                                               ; preds = %12
  %16 = load i32, i32* @volume_offset, align 4
  %17 = call i32 @acpi_ec_read(i32 %16, i32* %7)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %189

22:                                               ; preds = %15
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %23, 64
  store i32 %24, i32* %8, align 4
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, 15
  store i32 %26, i32* %7, align 4
  store i32 %26, i32* %9, align 4
  %27 = load i8*, i8** %11, align 8
  %28 = call i64 @strlencmp(i8* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %22
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 0, i32* %10, align 4
  br label %43

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %35, 15
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  br label %41

38:                                               ; preds = %34
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  br label %41

41:                                               ; preds = %38, %37
  %42 = phi i32 [ 15, %37 ], [ %40, %38 ]
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %41, %33
  br label %84

44:                                               ; preds = %22
  %45 = load i8*, i8** %11, align 8
  %46 = call i64 @strlencmp(i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %44
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 0, i32* %10, align 4
  br label %61

52:                                               ; preds = %48
  %53 = load i32, i32* %7, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %59

56:                                               ; preds = %52
  %57 = load i32, i32* %7, align 4
  %58 = sub nsw i32 %57, 1
  br label %59

59:                                               ; preds = %56, %55
  %60 = phi i32 [ 0, %55 ], [ %58, %56 ]
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %59, %51
  br label %83

62:                                               ; preds = %44
  %63 = load i8*, i8** %11, align 8
  %64 = call i32 @sscanf(i8* %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %9)
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load i32, i32* %9, align 4
  %68 = icmp sge i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i32, i32* %9, align 4
  %71 = icmp sle i32 %70, 15
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  br label %82

73:                                               ; preds = %69, %66, %62
  %74 = load i8*, i8** %11, align 8
  %75 = call i64 @strlencmp(i8* %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  store i32 64, i32* %10, align 4
  br label %81

78:                                               ; preds = %73
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  br label %189

81:                                               ; preds = %77
  br label %82

82:                                               ; preds = %81, %72
  br label %83

83:                                               ; preds = %82, %61
  br label %84

84:                                               ; preds = %83, %43
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %160

88:                                               ; preds = %84
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp sgt i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load i32, i32* @TP_CMOS_VOLUME_UP, align 4
  br label %96

94:                                               ; preds = %88
  %95 = load i32, i32* @TP_CMOS_VOLUME_DOWN, align 4
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i32 [ %93, %92 ], [ %95, %94 ]
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp sgt i32 %98, %99
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i32 1, i32 -1
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %96
  %106 = load i32, i32* %4, align 4
  %107 = call i64 @issue_thinkpad_cmos_command(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %105
  %110 = load i32, i32* @volume_offset, align 4
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @acpi_ec_write(i32 %110, i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %109, %105
  %115 = load i32, i32* @EIO, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %2, align 4
  br label %189

117:                                              ; preds = %109, %96
  %118 = load i32, i32* %7, align 4
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %138, %117
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %142

123:                                              ; preds = %119
  %124 = load i32, i32* %4, align 4
  %125 = call i64 @issue_thinkpad_cmos_command(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %134, label %127

127:                                              ; preds = %123
  %128 = load i32, i32* @volume_offset, align 4
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* %5, align 4
  %131 = add nsw i32 %129, %130
  %132 = call i32 @acpi_ec_write(i32 %128, i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %127, %123
  %135 = load i32, i32* @EIO, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %2, align 4
  br label %189

137:                                              ; preds = %127
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* %6, align 4
  %141 = add nsw i32 %140, %139
  store i32 %141, i32* %6, align 4
  br label %119

142:                                              ; preds = %119
  %143 = load i32, i32* %8, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %159

145:                                              ; preds = %142
  %146 = load i32, i32* @TP_CMOS_VOLUME_MUTE, align 4
  %147 = call i64 @issue_thinkpad_cmos_command(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %156, label %149

149:                                              ; preds = %145
  %150 = load i32, i32* @volume_offset, align 4
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* %8, align 4
  %153 = add nsw i32 %151, %152
  %154 = call i32 @acpi_ec_write(i32 %150, i32 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %149, %145
  %157 = load i32, i32* @EIO, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %2, align 4
  br label %189

159:                                              ; preds = %149, %142
  br label %160

160:                                              ; preds = %159, %84
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* %8, align 4
  %163 = icmp ne i32 %161, %162
  br i1 %163, label %164, label %187

164:                                              ; preds = %160
  %165 = load i32, i32* %10, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %164
  %168 = load i32, i32* @TP_CMOS_VOLUME_MUTE, align 4
  br label %171

169:                                              ; preds = %164
  %170 = load i32, i32* @TP_CMOS_VOLUME_UP, align 4
  br label %171

171:                                              ; preds = %169, %167
  %172 = phi i32 [ %168, %167 ], [ %170, %169 ]
  store i32 %172, i32* %4, align 4
  %173 = load i32, i32* %4, align 4
  %174 = call i64 @issue_thinkpad_cmos_command(i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %183, label %176

176:                                              ; preds = %171
  %177 = load i32, i32* @volume_offset, align 4
  %178 = load i32, i32* %7, align 4
  %179 = load i32, i32* %10, align 4
  %180 = add nsw i32 %178, %179
  %181 = call i32 @acpi_ec_write(i32 %177, i32 %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %186, label %183

183:                                              ; preds = %176, %171
  %184 = load i32, i32* @EIO, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %2, align 4
  br label %189

186:                                              ; preds = %176
  br label %187

187:                                              ; preds = %186, %160
  br label %12

188:                                              ; preds = %12
  store i32 0, i32* %2, align 4
  br label %189

189:                                              ; preds = %188, %183, %156, %134, %114, %78, %19
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local i8* @next_cmd(i8**) #1

declare dso_local i32 @acpi_ec_read(i32, i32*) #1

declare dso_local i64 @strlencmp(i8*, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i64 @issue_thinkpad_cmos_command(i32) #1

declare dso_local i32 @acpi_ec_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
