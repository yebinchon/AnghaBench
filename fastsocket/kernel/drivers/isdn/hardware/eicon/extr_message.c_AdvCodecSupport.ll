; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_AdvCodecSupport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_AdvCodecSupport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__*, %struct.TYPE_10__, %struct.TYPE_11__*, i32*, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i8*, i32, i32, i32 }

@HANDSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"AdvSigPlci=0x%x\00", align 1
@ADV_VOICE = common dso_local global i8* null, align 8
@CODEC_PERMANENT = common dso_local global i8* null, align 8
@ADVANCED_VOICE_SIG = common dso_local global i32 0, align 4
@ADVANCED_VOICE_NOSIG = common dso_local global i32 0, align 4
@SPOOFING_REQUIRED = common dso_local global i32 0, align 4
@CAI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"\01\15\00", align 1
@LLI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"\01\00\00", align 1
@ESC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"\02\18\00\00", align 1
@UID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"\06Capi20\00", align 1
@PERM_COD_ASSIGN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"Codec Assign\00", align 1
@ASSIGN = common dso_local global i32 0, align 4
@DSIG_ID = common dso_local global i32 0, align 4
@ON_BOARD_CODEC = common dso_local global i32 0, align 4
@CODEC = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [13 x i8] c"S/SCOM codec\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\01\80\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, i32*, i64)* @AdvCodecSupport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AdvCodecSupport(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @HANDSET, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %128

19:                                               ; preds = %4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %52

24:                                               ; preds = %19
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 5
  %27 = load i32*, i32** %26, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = icmp ne i32* %27, %28
  br i1 %29, label %35, label %30

30:                                               ; preds = %24
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 6
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = icmp ne %struct.TYPE_11__* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %30, %24
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 6
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %39 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.TYPE_11__* %38)
  %40 = call i32 @dbug(i32 1, i32 %39)
  store i32 8193, i32* %5, align 4
  br label %185

41:                                               ; preds = %30
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %43 = icmp ne %struct.TYPE_11__* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 6
  store %struct.TYPE_11__* %45, %struct.TYPE_11__** %47, align 8
  %48 = load i8*, i8** @ADV_VOICE, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  br label %51

51:                                               ; preds = %44, %41
  store i32 0, i32* %5, align 4
  br label %185

52:                                               ; preds = %19
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %54 = call i32 @get_plci(%struct.TYPE_12__* %53)
  store i32 %54, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %126

56:                                               ; preds = %52
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i64 %62
  store %struct.TYPE_11__* %63, %struct.TYPE_11__** %11, align 8
  %64 = load i8*, i8** @CODEC_PERMANENT, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  %67 = load i64, i64* %9, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %56
  %70 = load i32, i32* @ADVANCED_VOICE_SIG, align 4
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 8
  br label %84

73:                                               ; preds = %56
  %74 = load i32, i32* @ADVANCED_VOICE_NOSIG, align 4
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %78 = icmp ne %struct.TYPE_11__* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load i32, i32* @SPOOFING_REQUIRED, align 4
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %79, %73
  br label %84

84:                                               ; preds = %83, %69
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %86 = icmp ne %struct.TYPE_11__* %85, null
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 6
  store %struct.TYPE_11__* %88, %struct.TYPE_11__** %90, align 8
  %91 = load i8*, i8** @ADV_VOICE, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  store i8* %91, i8** %93, align 8
  br label %94

94:                                               ; preds = %87, %84
  %95 = load i32*, i32** %8, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 5
  store i32* %95, i32** %97, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  store i32 1, i32* %99, align 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 4
  store %struct.TYPE_11__* %100, %struct.TYPE_11__** %102, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %104 = load i32, i32* @CAI, align 4
  %105 = call i32 @add_p(%struct.TYPE_11__* %103, i32 %104, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %107 = load i32, i32* @LLI, align 4
  %108 = call i32 @add_p(%struct.TYPE_11__* %106, i32 %107, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %110 = load i32, i32* @ESC, align 4
  %111 = call i32 @add_p(%struct.TYPE_11__* %109, i32 %110, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %113 = load i32, i32* @UID, align 4
  %114 = call i32 @add_p(%struct.TYPE_11__* %112, i32 %113, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %115 = load i32, i32* @PERM_COD_ASSIGN, align 4
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 8
  %118 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %119 = call i32 @dbug(i32 1, i32 %118)
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %121 = load i32, i32* @ASSIGN, align 4
  %122 = load i32, i32* @DSIG_ID, align 4
  %123 = call i32 @sig_req(%struct.TYPE_11__* %120, i32 %121, i32 %122)
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %125 = call i32 @send_req(%struct.TYPE_11__* %124)
  br label %127

126:                                              ; preds = %52
  store i32 8193, i32* %5, align 4
  br label %185

127:                                              ; preds = %94
  br label %184

128:                                              ; preds = %4
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @ON_BOARD_CODEC, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %182

136:                                              ; preds = %128
  %137 = load i64, i64* %9, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  store i32 12299, i32* %5, align 4
  br label %185

140:                                              ; preds = %136
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %142 = icmp ne %struct.TYPE_11__* %141, null
  br i1 %142, label %143, label %147

143:                                              ; preds = %140
  %144 = load i8*, i8** @CODEC, align 8
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  store i8* %144, i8** %146, align 8
  br label %147

147:                                              ; preds = %143, %140
  %148 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %149 = call i32 @dbug(i32 1, i32 %148)
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %181, label %154

154:                                              ; preds = %147
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %156 = call i32 @get_plci(%struct.TYPE_12__* %155)
  store i32 %156, i32* %10, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %179

158:                                              ; preds = %154
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 2
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %160, align 8
  %162 = load i32, i32* %10, align 4
  %163 = sub nsw i32 %162, 1
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i64 %164
  store %struct.TYPE_11__* %165, %struct.TYPE_11__** %11, align 8
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %167 = load i32, i32* @CAI, align 4
  %168 = call i32 @add_p(%struct.TYPE_11__* %166, i32 %167, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %170 = load i32, i32* @UID, align 4
  %171 = call i32 @add_p(%struct.TYPE_11__* %169, i32 %170, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %173 = load i32, i32* @ASSIGN, align 4
  %174 = call i32 @sig_req(%struct.TYPE_11__* %172, i32 %173, i32 192)
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %176 = call i32 @send_req(%struct.TYPE_11__* %175)
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 1
  store i32 1, i32* %178, align 4
  br label %180

179:                                              ; preds = %154
  store i32 8193, i32* %5, align 4
  br label %185

180:                                              ; preds = %158
  br label %181

181:                                              ; preds = %180, %147
  br label %183

182:                                              ; preds = %128
  store i32 12299, i32* %5, align 4
  br label %185

183:                                              ; preds = %181
  br label %184

184:                                              ; preds = %183, %127
  store i32 0, i32* %5, align 4
  br label %185

185:                                              ; preds = %184, %182, %179, %139, %126, %51, %35
  %186 = load i32, i32* %5, align 4
  ret i32 %186
}

declare dso_local i32 @dbug(i32, i32) #1

declare dso_local i32 @dprintf(i8*, ...) #1

declare dso_local i32 @get_plci(%struct.TYPE_12__*) #1

declare dso_local i32 @add_p(%struct.TYPE_11__*, i32, i8*) #1

declare dso_local i32 @sig_req(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @send_req(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
