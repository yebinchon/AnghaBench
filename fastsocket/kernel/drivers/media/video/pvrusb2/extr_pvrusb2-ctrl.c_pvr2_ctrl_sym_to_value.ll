; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-ctrl.c_pvr2_ctrl_sym_to_value.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-ctrl.c_pvr2_ctrl_sym_to_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_ctrl = type { %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@pvr2_ctl_int = common dso_local global i64 0, align 8
@pvr2_ctl_bool = common dso_local global i64 0, align 8
@boolNames = common dso_local global i32* null, align 8
@pvr2_ctl_enum = common dso_local global i64 0, align 8
@pvr2_ctl_bitmask = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvr2_ctrl_sym_to_value(%struct.pvr2_ctrl* %0, i8* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pvr2_ctrl*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pvr2_ctrl* %0, %struct.pvr2_ctrl** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %12, align 4
  %16 = load i32*, i32** %10, align 8
  store i32 0, i32* %16, align 4
  %17 = load i32*, i32** %11, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %13, align 4
  br label %18

18:                                               ; preds = %42, %5
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %18
  %23 = load i8*, i8** %8, align 8
  %24 = load i32, i32* %13, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp sle i32 %28, 32
  br i1 %29, label %38, label %30

30:                                               ; preds = %22
  %31 = load i8*, i8** %8, align 8
  %32 = load i32, i32* %13, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp sge i32 %36, 127
  br label %38

38:                                               ; preds = %30, %22
  %39 = phi i1 [ true, %22 ], [ %37, %30 ]
  br label %40

40:                                               ; preds = %38, %18
  %41 = phi i1 [ false, %18 ], [ %39, %38 ]
  br i1 %41, label %42, label %45

42:                                               ; preds = %40
  %43 = load i32, i32* %13, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %13, align 4
  br label %18

45:                                               ; preds = %40
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %9, align 4
  %48 = sub i32 %47, %46
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i8*, i8** %8, align 8
  %51 = zext i32 %49 to i64
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8* %52, i8** %8, align 8
  store i32 0, i32* %13, align 4
  br label %53

53:                                               ; preds = %83, %45
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %81

57:                                               ; preds = %53
  %58 = load i8*, i8** %8, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %13, align 4
  %61 = add i32 %60, 1
  %62 = sub i32 %59, %61
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %58, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp sle i32 %66, 32
  br i1 %67, label %79, label %68

68:                                               ; preds = %57
  %69 = load i8*, i8** %8, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %13, align 4
  %72 = add i32 %71, 1
  %73 = sub i32 %70, %72
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %69, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp sge i32 %77, 127
  br label %79

79:                                               ; preds = %68, %57
  %80 = phi i1 [ true, %57 ], [ %78, %68 ]
  br label %81

81:                                               ; preds = %79, %53
  %82 = phi i1 [ false, %53 ], [ %80, %79 ]
  br i1 %82, label %83, label %86

83:                                               ; preds = %81
  %84 = load i32, i32* %13, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %13, align 4
  br label %53

86:                                               ; preds = %81
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %9, align 4
  %89 = sub i32 %88, %87
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %86
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %6, align 4
  br label %239

95:                                               ; preds = %86
  %96 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %7, align 8
  %97 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %96, i32 0, i32 0
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @LOCK_TAKE(i32 %100)
  br label %102

102:                                              ; preds = %95
  %103 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %7, align 8
  %104 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %103, i32 0, i32 1
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @pvr2_ctl_int, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %124

110:                                              ; preds = %102
  %111 = load i8*, i8** %8, align 8
  %112 = load i32, i32* %9, align 4
  %113 = load i32*, i32** %11, align 8
  %114 = call i32 @parse_token(i8* %111, i32 %112, i32* %113, i32* null, i32 0)
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %12, align 4
  %116 = icmp sge i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %110
  %118 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %7, align 8
  %119 = load i32*, i32** %11, align 8
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @pvr2_ctrl_range_check(%struct.pvr2_ctrl* %118, i32 %120)
  store i32 %121, i32* %12, align 4
  br label %122

122:                                              ; preds = %117, %110
  %123 = load i32*, i32** %10, align 8
  store i32 -1, i32* %123, align 4
  br label %230

124:                                              ; preds = %102
  %125 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %7, align 8
  %126 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %125, i32 0, i32 1
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @pvr2_ctl_bool, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %163

132:                                              ; preds = %124
  %133 = load i8*, i8** %8, align 8
  %134 = load i32, i32* %9, align 4
  %135 = load i32*, i32** %11, align 8
  %136 = load i32*, i32** @boolNames, align 8
  %137 = load i32*, i32** @boolNames, align 8
  %138 = call i32 @ARRAY_SIZE(i32* %137)
  %139 = call i32 @parse_token(i8* %133, i32 %134, i32* %135, i32* %136, i32 %138)
  store i32 %139, i32* %12, align 4
  %140 = load i32, i32* %12, align 4
  %141 = icmp eq i32 %140, 1
  br i1 %141, label %142, label %149

142:                                              ; preds = %132
  %143 = load i32*, i32** %11, align 8
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  %146 = zext i1 %145 to i64
  %147 = select i1 %145, i32 1, i32 0
  %148 = load i32*, i32** %11, align 8
  store i32 %147, i32* %148, align 4
  br label %161

149:                                              ; preds = %132
  %150 = load i32, i32* %12, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %160

152:                                              ; preds = %149
  %153 = load i32*, i32** %11, align 8
  %154 = load i32, i32* %153, align 4
  %155 = and i32 %154, 1
  %156 = icmp ne i32 %155, 0
  %157 = zext i1 %156 to i64
  %158 = select i1 %156, i32 1, i32 0
  %159 = load i32*, i32** %11, align 8
  store i32 %158, i32* %159, align 4
  br label %160

160:                                              ; preds = %152, %149
  br label %161

161:                                              ; preds = %160, %142
  %162 = load i32*, i32** %10, align 8
  store i32 1, i32* %162, align 4
  br label %229

163:                                              ; preds = %124
  %164 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %7, align 8
  %165 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %164, i32 0, i32 1
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @pvr2_ctl_enum, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %199

171:                                              ; preds = %163
  %172 = load i8*, i8** %8, align 8
  %173 = load i32, i32* %9, align 4
  %174 = load i32*, i32** %11, align 8
  %175 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %7, align 8
  %176 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %175, i32 0, i32 1
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %7, align 8
  %183 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %182, i32 0, i32 1
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @parse_token(i8* %172, i32 %173, i32* %174, i32* %181, i32 %188)
  store i32 %189, i32* %12, align 4
  %190 = load i32, i32* %12, align 4
  %191 = icmp sge i32 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %171
  %193 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %7, align 8
  %194 = load i32*, i32** %11, align 8
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @pvr2_ctrl_range_check(%struct.pvr2_ctrl* %193, i32 %195)
  store i32 %196, i32* %12, align 4
  br label %197

197:                                              ; preds = %192, %171
  %198 = load i32*, i32** %10, align 8
  store i32 -1, i32* %198, align 4
  br label %228

199:                                              ; preds = %163
  %200 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %7, align 8
  %201 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %200, i32 0, i32 1
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @pvr2_ctl_bitmask, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %227

207:                                              ; preds = %199
  %208 = load i8*, i8** %8, align 8
  %209 = load i32, i32* %9, align 4
  %210 = load i32*, i32** %10, align 8
  %211 = load i32*, i32** %11, align 8
  %212 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %7, align 8
  %213 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %212, i32 0, i32 1
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %7, align 8
  %220 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %219, i32 0, i32 1
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @parse_tlist(i8* %208, i32 %209, i32* %210, i32* %211, i32 %218, i32 %225)
  store i32 %226, i32* %12, align 4
  br label %227

227:                                              ; preds = %207, %199
  br label %228

228:                                              ; preds = %227, %197
  br label %229

229:                                              ; preds = %228, %161
  br label %230

230:                                              ; preds = %229, %122
  br label %231

231:                                              ; preds = %230
  %232 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %7, align 8
  %233 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %232, i32 0, i32 0
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @LOCK_GIVE(i32 %236)
  %238 = load i32, i32* %12, align 4
  store i32 %238, i32* %6, align 4
  br label %239

239:                                              ; preds = %231, %92
  %240 = load i32, i32* %6, align 4
  ret i32 %240
}

declare dso_local i32 @LOCK_TAKE(i32) #1

declare dso_local i32 @parse_token(i8*, i32, i32*, i32*, i32) #1

declare dso_local i32 @pvr2_ctrl_range_check(%struct.pvr2_ctrl*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @parse_tlist(i8*, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @LOCK_GIVE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
