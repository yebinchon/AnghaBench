; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-video.c_saa7134_s_std_internal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-video.c_saa7134_s_std_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.saa7134_dev = type { i32, i32, i32 }
%struct.saa7134_fh = type { i32 }

@RESOURCE_OVERLAY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@TVNORMS = common dso_local global i32 0, align 4
@tvnorms = common dso_local global %struct.TYPE_3__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_STD_SECAM = common dso_local global i32 0, align 4
@secam = common dso_local global i8* null, align 8
@V4L2_STD_SECAM_LC = common dso_local global i32 0, align 4
@V4L2_STD_SECAM_L = common dso_local global i32 0, align 4
@V4L2_STD_SECAM_DK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @saa7134_s_std_internal(%struct.saa7134_dev* %0, %struct.saa7134_fh* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.saa7134_dev*, align 8
  %6 = alloca %struct.saa7134_fh*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %5, align 8
  store %struct.saa7134_fh* %1, %struct.saa7134_fh** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.saa7134_fh*, %struct.saa7134_fh** %6, align 8
  %13 = icmp ne %struct.saa7134_fh* %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %3
  %15 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %16 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %15, i32 0, i32 2
  %17 = load %struct.saa7134_fh*, %struct.saa7134_fh** %6, align 8
  %18 = getelementptr inbounds %struct.saa7134_fh, %struct.saa7134_fh* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @v4l2_prio_check(i32* %16, i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 0, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %4, align 4
  br label %233

25:                                               ; preds = %14
  br label %35

26:                                               ; preds = %3
  %27 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %28 = load i32, i32* @RESOURCE_OVERLAY, align 4
  %29 = call i64 @res_locked(%struct.saa7134_dev* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %233

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %25
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %52, %35
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @TVNORMS, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %36
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tvnorms, align 8
  %44 = load i32, i32* %9, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %42, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %55

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %9, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %36

55:                                               ; preds = %50, %36
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @TVNORMS, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %81

59:                                               ; preds = %55
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %77, %59
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @TVNORMS, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %64, label %80

64:                                               ; preds = %60
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tvnorms, align 8
  %68 = load i32, i32* %9, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %66, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %64
  br label %80

76:                                               ; preds = %64
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %9, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %60

80:                                               ; preds = %75, %60
  br label %81

81:                                               ; preds = %80, %55
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @TVNORMS, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %233

88:                                               ; preds = %81
  %89 = load i32*, i32** %7, align 8
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @V4L2_STD_SECAM, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %173

94:                                               ; preds = %88
  %95 = load i8*, i8** @secam, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 0
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, 45
  br i1 %99, label %100, label %173

100:                                              ; preds = %94
  %101 = load i8*, i8** @secam, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 0
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 76
  br i1 %105, label %112, label %106

106:                                              ; preds = %100
  %107 = load i8*, i8** @secam, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 0
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 108
  br i1 %111, label %112, label %129

112:                                              ; preds = %106, %100
  %113 = load i8*, i8** @secam, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 1
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 67
  br i1 %117, label %124, label %118

118:                                              ; preds = %112
  %119 = load i8*, i8** @secam, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 1
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 99
  br i1 %123, label %124, label %126

124:                                              ; preds = %118, %112
  %125 = load i32, i32* @V4L2_STD_SECAM_LC, align 4
  store i32 %125, i32* %10, align 4
  br label %128

126:                                              ; preds = %118
  %127 = load i32, i32* @V4L2_STD_SECAM_L, align 4
  store i32 %127, i32* %10, align 4
  br label %128

128:                                              ; preds = %126, %124
  br label %146

129:                                              ; preds = %106
  %130 = load i8*, i8** @secam, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 0
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 68
  br i1 %134, label %141, label %135

135:                                              ; preds = %129
  %136 = load i8*, i8** @secam, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 0
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp eq i32 %139, 100
  br i1 %140, label %141, label %143

141:                                              ; preds = %135, %129
  %142 = load i32, i32* @V4L2_STD_SECAM_DK, align 4
  store i32 %142, i32* %10, align 4
  br label %145

143:                                              ; preds = %135
  %144 = load i32, i32* @V4L2_STD_SECAM, align 4
  store i32 %144, i32* %10, align 4
  br label %145

145:                                              ; preds = %143, %141
  br label %146

146:                                              ; preds = %145, %128
  store i32 0, i32* %9, align 4
  br label %147

147:                                              ; preds = %162, %146
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* @TVNORMS, align 4
  %150 = icmp ult i32 %148, %149
  br i1 %150, label %151, label %165

151:                                              ; preds = %147
  %152 = load i32, i32* %10, align 4
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tvnorms, align 8
  %154 = load i32, i32* %9, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %152, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %151
  br label %165

161:                                              ; preds = %151
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %9, align 4
  %164 = add i32 %163, 1
  store i32 %164, i32* %9, align 4
  br label %147

165:                                              ; preds = %160, %147
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* @TVNORMS, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %165
  %170 = load i32, i32* @EINVAL, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %4, align 4
  br label %233

172:                                              ; preds = %165
  br label %173

173:                                              ; preds = %172, %94, %88
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tvnorms, align 8
  %175 = load i32, i32* %9, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32*, i32** %7, align 8
  store i32 %179, i32* %180, align 4
  %181 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %182 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %181, i32 0, i32 0
  %183 = call i32 @mutex_lock(i32* %182)
  %184 = load %struct.saa7134_fh*, %struct.saa7134_fh** %6, align 8
  %185 = icmp ne %struct.saa7134_fh* %184, null
  br i1 %185, label %186, label %220

186:                                              ; preds = %173
  %187 = load %struct.saa7134_fh*, %struct.saa7134_fh** %6, align 8
  %188 = load i32, i32* @RESOURCE_OVERLAY, align 4
  %189 = call i64 @res_check(%struct.saa7134_fh* %187, i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %220

191:                                              ; preds = %186
  %192 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %193 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %192, i32 0, i32 1
  %194 = load i64, i64* %8, align 8
  %195 = call i32 @spin_lock_irqsave(i32* %193, i64 %194)
  %196 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %197 = load %struct.saa7134_fh*, %struct.saa7134_fh** %6, align 8
  %198 = call i32 @stop_preview(%struct.saa7134_dev* %196, %struct.saa7134_fh* %197)
  %199 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %200 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %199, i32 0, i32 1
  %201 = load i64, i64* %8, align 8
  %202 = call i32 @spin_unlock_irqrestore(i32* %200, i64 %201)
  %203 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tvnorms, align 8
  %205 = load i32, i32* %9, align 4
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i64 %206
  %208 = call i32 @set_tvnorm(%struct.saa7134_dev* %203, %struct.TYPE_3__* %207)
  %209 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %210 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %209, i32 0, i32 1
  %211 = load i64, i64* %8, align 8
  %212 = call i32 @spin_lock_irqsave(i32* %210, i64 %211)
  %213 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %214 = load %struct.saa7134_fh*, %struct.saa7134_fh** %6, align 8
  %215 = call i32 @start_preview(%struct.saa7134_dev* %213, %struct.saa7134_fh* %214)
  %216 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %217 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %216, i32 0, i32 1
  %218 = load i64, i64* %8, align 8
  %219 = call i32 @spin_unlock_irqrestore(i32* %217, i64 %218)
  br label %227

220:                                              ; preds = %186, %173
  %221 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tvnorms, align 8
  %223 = load i32, i32* %9, align 4
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i64 %224
  %226 = call i32 @set_tvnorm(%struct.saa7134_dev* %221, %struct.TYPE_3__* %225)
  br label %227

227:                                              ; preds = %220, %191
  %228 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %229 = call i32 @saa7134_tvaudio_do_scan(%struct.saa7134_dev* %228)
  %230 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %231 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %230, i32 0, i32 0
  %232 = call i32 @mutex_unlock(i32* %231)
  store i32 0, i32* %4, align 4
  br label %233

233:                                              ; preds = %227, %169, %85, %31, %23
  %234 = load i32, i32* %4, align 4
  ret i32 %234
}

declare dso_local i32 @v4l2_prio_check(i32*, i32) #1

declare dso_local i64 @res_locked(%struct.saa7134_dev*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @res_check(%struct.saa7134_fh*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @stop_preview(%struct.saa7134_dev*, %struct.saa7134_fh*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @set_tvnorm(%struct.saa7134_dev*, %struct.TYPE_3__*) #1

declare dso_local i32 @start_preview(%struct.saa7134_dev*, %struct.saa7134_fh*) #1

declare dso_local i32 @saa7134_tvaudio_do_scan(%struct.saa7134_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
