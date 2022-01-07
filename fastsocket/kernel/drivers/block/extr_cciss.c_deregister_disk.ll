; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_cciss.c_deregister_disk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_cciss.c_deregister_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__**, i32, %struct.gendisk** }
%struct.TYPE_6__ = type { i32, i64 }
%struct.gendisk = type { i32, %struct.request_queue* }
%struct.request_queue = type { i32 }

@CAP_SYS_RAWIO = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@GENHD_FL_UP = common dso_local global i32 0, align 4
@CISS_MAX_LUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i32, i32)* @deregister_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deregister_disk(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.gendisk*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.request_queue*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* @CAP_SYS_RAWIO, align 4
  %18 = call i32 @capable(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @EPERM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %196

23:                                               ; preds = %4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %26, i64 %28
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %12, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 3
  %33 = load %struct.gendisk**, %struct.gendisk*** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.gendisk*, %struct.gendisk** %33, i64 %35
  %37 = load %struct.gendisk*, %struct.gendisk** %36, align 8
  store %struct.gendisk* %37, %struct.gendisk** %11, align 8
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %23
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 3
  %43 = load %struct.gendisk**, %struct.gendisk*** %42, align 8
  %44 = getelementptr inbounds %struct.gendisk*, %struct.gendisk** %43, i64 0
  %45 = load %struct.gendisk*, %struct.gendisk** %44, align 8
  %46 = load %struct.gendisk*, %struct.gendisk** %11, align 8
  %47 = icmp eq %struct.gendisk* %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %40, %23
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* @EBUSY, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %196

57:                                               ; preds = %48
  br label %67

58:                                               ; preds = %40
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32, i32* @EBUSY, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %5, align 4
  br label %196

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66, %57
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %70, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %71, i64 %74
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = icmp eq %struct.TYPE_6__* %68, %76
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %13, align 4
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 3
  %81 = load %struct.gendisk**, %struct.gendisk*** %80, align 8
  %82 = getelementptr inbounds %struct.gendisk*, %struct.gendisk** %81, i64 0
  %83 = load %struct.gendisk*, %struct.gendisk** %82, align 8
  %84 = load %struct.gendisk*, %struct.gendisk** %11, align 8
  %85 = icmp ne %struct.gendisk* %83, %84
  br i1 %85, label %86, label %141

86:                                               ; preds = %67
  %87 = load %struct.gendisk*, %struct.gendisk** %11, align 8
  %88 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %87, i32 0, i32 1
  %89 = load %struct.request_queue*, %struct.request_queue** %88, align 8
  store %struct.request_queue* %89, %struct.request_queue** %14, align 8
  %90 = load %struct.gendisk*, %struct.gendisk** %11, align 8
  %91 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @GENHD_FL_UP, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %86
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @cciss_destroy_ld_sysfs_entry(%struct.TYPE_7__* %97, i32 %98, i32 0)
  %100 = load %struct.gendisk*, %struct.gendisk** %11, align 8
  %101 = call i32 @del_gendisk(%struct.gendisk* %100)
  br label %102

102:                                              ; preds = %96, %86
  %103 = load %struct.request_queue*, %struct.request_queue** %14, align 8
  %104 = icmp ne %struct.request_queue* %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load %struct.request_queue*, %struct.request_queue** %14, align 8
  %107 = call i32 @blk_cleanup_queue(%struct.request_queue* %106)
  br label %108

108:                                              ; preds = %105, %102
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %140

111:                                              ; preds = %108
  store i32 0, i32* %10, align 4
  br label %112

112:                                              ; preds = %134, %111
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* @CISS_MAX_LUN, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %137

116:                                              ; preds = %112
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 3
  %119 = load %struct.gendisk**, %struct.gendisk*** %118, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.gendisk*, %struct.gendisk** %119, i64 %121
  %123 = load %struct.gendisk*, %struct.gendisk** %122, align 8
  %124 = load %struct.gendisk*, %struct.gendisk** %11, align 8
  %125 = icmp eq %struct.gendisk* %123, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %116
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 3
  %129 = load %struct.gendisk**, %struct.gendisk*** %128, align 8
  %130 = load i32, i32* %10, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.gendisk*, %struct.gendisk** %129, i64 %131
  store %struct.gendisk* null, %struct.gendisk** %132, align 8
  br label %137

133:                                              ; preds = %116
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %10, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %10, align 4
  br label %112

137:                                              ; preds = %126, %112
  %138 = load %struct.gendisk*, %struct.gendisk** %11, align 8
  %139 = call i32 @put_disk(%struct.gendisk* %138)
  br label %140

140:                                              ; preds = %137, %108
  br label %146

141:                                              ; preds = %67
  %142 = load %struct.gendisk*, %struct.gendisk** %11, align 8
  %143 = call i32 @set_capacity(%struct.gendisk* %142, i32 0)
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %145 = call i32 @cciss_clear_drive_info(%struct.TYPE_6__* %144)
  br label %146

146:                                              ; preds = %141, %140
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = add nsw i32 %149, -1
  store i32 %150, i32* %148, align 8
  %151 = load i32, i32* %8, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %195

153:                                              ; preds = %146
  %154 = load i32, i32* %13, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %195

156:                                              ; preds = %153
  store i32 -1, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %157

157:                                              ; preds = %187, %156
  %158 = load i32, i32* %15, align 4
  %159 = sext i32 %158 to i64
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp ule i64 %159, %162
  br i1 %163, label %164, label %190

164:                                              ; preds = %157
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %166, align 8
  %168 = load i32, i32* %15, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %167, i64 %169
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %170, align 8
  %172 = icmp ne %struct.TYPE_6__* %171, null
  br i1 %172, label %173, label %186

173:                                              ; preds = %164
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %175, align 8
  %177 = load i32, i32* %15, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %176, i64 %178
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %173
  %185 = load i32, i32* %15, align 4
  store i32 %185, i32* %16, align 4
  br label %186

186:                                              ; preds = %184, %173, %164
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %15, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %15, align 4
  br label %157

190:                                              ; preds = %157
  %191 = load i32, i32* %16, align 4
  %192 = sext i32 %191 to i64
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 0
  store i64 %192, i64* %194, align 8
  br label %195

195:                                              ; preds = %190, %153, %146
  store i32 0, i32* %5, align 4
  br label %196

196:                                              ; preds = %195, %63, %54, %20
  %197 = load i32, i32* %5, align 4
  ret i32 %197
}

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @cciss_destroy_ld_sysfs_entry(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @del_gendisk(%struct.gendisk*) #1

declare dso_local i32 @blk_cleanup_queue(%struct.request_queue*) #1

declare dso_local i32 @put_disk(%struct.gendisk*) #1

declare dso_local i32 @set_capacity(%struct.gendisk*, i32) #1

declare dso_local i32 @cciss_clear_drive_info(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
