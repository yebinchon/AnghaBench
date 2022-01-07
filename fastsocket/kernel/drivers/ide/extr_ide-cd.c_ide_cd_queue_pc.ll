; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-cd.c_ide_cd_queue_pc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-cd.c_ide_cd_queue_pc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.cdrom_info* }
%struct.cdrom_info = type { i32 }
%struct.request_sense = type { i64, i32, i32 }
%struct.request = type { i32, i32, i32, %struct.request_sense*, i32, i32 }

@IDE_DBG_PC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"cmd[0]: 0x%x, write: 0x%x, timeout: %d, cmd_flags: 0x%x\00", align 1
@__GFP_WAIT = common dso_local global i32 0, align 4
@BLK_MAX_CDB = common dso_local global i32 0, align 4
@REQ_TYPE_ATA_PC = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@REQ_FAILED = common dso_local global i32 0, align 4
@UNIT_ATTENTION = common dso_local global i64 0, align 8
@NOT_READY = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ide_cd_queue_pc(%struct.TYPE_4__* %0, i8* %1, i32 %2, i8* %3, i32* %4, %struct.request_sense* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.request_sense*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.cdrom_info*, align 8
  %19 = alloca %struct.request_sense, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.request*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.request_sense*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i32* %4, i32** %14, align 8
  store %struct.request_sense* %5, %struct.request_sense** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load %struct.cdrom_info*, %struct.cdrom_info** %26, align 8
  store %struct.cdrom_info* %27, %struct.cdrom_info** %18, align 8
  store i32 10, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %28 = load %struct.request_sense*, %struct.request_sense** %15, align 8
  %29 = icmp ne %struct.request_sense* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %8
  store %struct.request_sense* %19, %struct.request_sense** %15, align 8
  br label %31

31:                                               ; preds = %30, %8
  %32 = load i32, i32* @IDE_DBG_PC, align 4
  %33 = load i8*, i8** %11, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %16, align 4
  %38 = load i32, i32* %17, align 4
  %39 = call i32 @ide_debug_log(i32 %32, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i8 zeroext %35, i32 %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %154, %31
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* @__GFP_WAIT, align 4
  %46 = call %struct.request* @blk_get_request(i32 %43, i32 %44, i32 %45)
  store %struct.request* %46, %struct.request** %22, align 8
  %47 = load %struct.request*, %struct.request** %22, align 8
  %48 = getelementptr inbounds %struct.request, %struct.request* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %11, align 8
  %51 = load i32, i32* @BLK_MAX_CDB, align 4
  %52 = call i32 @memcpy(i32 %49, i8* %50, i32 %51)
  %53 = load i32, i32* @REQ_TYPE_ATA_PC, align 4
  %54 = load %struct.request*, %struct.request** %22, align 8
  %55 = getelementptr inbounds %struct.request, %struct.request* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 8
  %56 = load %struct.request_sense*, %struct.request_sense** %15, align 8
  %57 = load %struct.request*, %struct.request** %22, align 8
  %58 = getelementptr inbounds %struct.request, %struct.request* %57, i32 0, i32 3
  store %struct.request_sense* %56, %struct.request_sense** %58, align 8
  %59 = load i32, i32* %17, align 4
  %60 = load %struct.request*, %struct.request** %22, align 8
  %61 = getelementptr inbounds %struct.request, %struct.request* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = load i32, i32* %16, align 4
  %65 = load %struct.request*, %struct.request** %22, align 8
  %66 = getelementptr inbounds %struct.request, %struct.request* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load i8*, i8** %13, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %86

69:                                               ; preds = %40
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.request*, %struct.request** %22, align 8
  %74 = load i8*, i8** %13, align 8
  %75 = load i32*, i32** %14, align 8
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @GFP_NOIO, align 4
  %78 = call i32 @blk_rq_map_kern(i32 %72, %struct.request* %73, i8* %74, i32 %76, i32 %77)
  store i32 %78, i32* %23, align 4
  %79 = load i32, i32* %23, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %69
  %82 = load %struct.request*, %struct.request** %22, align 8
  %83 = call i32 @blk_put_request(%struct.request* %82)
  %84 = load i32, i32* %23, align 4
  store i32 %84, i32* %9, align 4
  br label %167

85:                                               ; preds = %69
  br label %86

86:                                               ; preds = %85, %40
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.cdrom_info*, %struct.cdrom_info** %18, align 8
  %91 = getelementptr inbounds %struct.cdrom_info, %struct.cdrom_info* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.request*, %struct.request** %22, align 8
  %94 = call i32 @blk_execute_rq(i32 %89, i32 %92, %struct.request* %93, i32 0)
  store i32 %94, i32* %23, align 4
  %95 = load i8*, i8** %13, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %102

97:                                               ; preds = %86
  %98 = load %struct.request*, %struct.request** %22, align 8
  %99 = getelementptr inbounds %struct.request, %struct.request* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load i32*, i32** %14, align 8
  store i32 %100, i32* %101, align 4
  br label %102

102:                                              ; preds = %97, %86
  %103 = load %struct.request*, %struct.request** %22, align 8
  %104 = getelementptr inbounds %struct.request, %struct.request* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  store i32 %105, i32* %21, align 4
  %106 = load %struct.request*, %struct.request** %22, align 8
  %107 = call i32 @blk_put_request(%struct.request* %106)
  %108 = load i32, i32* %21, align 4
  %109 = load i32, i32* @REQ_FAILED, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %145

112:                                              ; preds = %102
  %113 = load %struct.request_sense*, %struct.request_sense** %15, align 8
  store %struct.request_sense* %113, %struct.request_sense** %24, align 8
  %114 = load %struct.request_sense*, %struct.request_sense** %24, align 8
  %115 = getelementptr inbounds %struct.request_sense, %struct.request_sense* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @UNIT_ATTENTION, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %112
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %121 = call i32 @cdrom_saw_media_change(%struct.TYPE_4__* %120)
  br label %142

122:                                              ; preds = %112
  %123 = load %struct.request_sense*, %struct.request_sense** %24, align 8
  %124 = getelementptr inbounds %struct.request_sense, %struct.request_sense* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @NOT_READY, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %140

128:                                              ; preds = %122
  %129 = load %struct.request_sense*, %struct.request_sense** %24, align 8
  %130 = getelementptr inbounds %struct.request_sense, %struct.request_sense* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = icmp eq i32 %131, 4
  br i1 %132, label %133, label %140

133:                                              ; preds = %128
  %134 = load %struct.request_sense*, %struct.request_sense** %24, align 8
  %135 = getelementptr inbounds %struct.request_sense, %struct.request_sense* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 4
  br i1 %137, label %138, label %140

138:                                              ; preds = %133
  %139 = call i32 @ssleep(i32 2)
  br label %141

140:                                              ; preds = %133, %128, %122
  store i32 0, i32* %20, align 4
  br label %141

141:                                              ; preds = %140, %138
  br label %142

142:                                              ; preds = %141, %119
  %143 = load i32, i32* %20, align 4
  %144 = add nsw i32 %143, -1
  store i32 %144, i32* %20, align 4
  br label %145

145:                                              ; preds = %142, %102
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %21, align 4
  %148 = load i32, i32* @REQ_FAILED, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %146
  %152 = load i32, i32* %20, align 4
  %153 = icmp sge i32 %152, 0
  br label %154

154:                                              ; preds = %151, %146
  %155 = phi i1 [ false, %146 ], [ %153, %151 ]
  br i1 %155, label %40, label %156

156:                                              ; preds = %154
  %157 = load i32, i32* %21, align 4
  %158 = load i32, i32* @REQ_FAILED, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = load i32, i32* @EIO, align 4
  %163 = sub nsw i32 0, %162
  br label %165

164:                                              ; preds = %156
  br label %165

165:                                              ; preds = %164, %161
  %166 = phi i32 [ %163, %161 ], [ 0, %164 ]
  store i32 %166, i32* %9, align 4
  br label %167

167:                                              ; preds = %165, %81
  %168 = load i32, i32* %9, align 4
  ret i32 %168
}

declare dso_local i32 @ide_debug_log(i32, i8*, i8 zeroext, i32, i32, i32) #1

declare dso_local %struct.request* @blk_get_request(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @blk_rq_map_kern(i32, %struct.request*, i8*, i32, i32) #1

declare dso_local i32 @blk_put_request(%struct.request*) #1

declare dso_local i32 @blk_execute_rq(i32, i32, %struct.request*, i32) #1

declare dso_local i32 @cdrom_saw_media_change(%struct.TYPE_4__*) #1

declare dso_local i32 @ssleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
