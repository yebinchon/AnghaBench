; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_update_res_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_update_res_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_resource_entry = type { i32, i32, i32, i32, i32, i32*, %struct.TYPE_10__*, i64, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.ipr_config_table_entry_wrapper = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@IPR_MAX_RES_PATH_LENGTH = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Resource path: %s\0A\00", align 1
@IPR_IS_IOA_RESOURCE = common dso_local global i32 0, align 4
@IPR_RES_TYPE_IOAFP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipr_resource_entry*, %struct.ipr_config_table_entry_wrapper*)* @ipr_update_res_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipr_update_res_entry(%struct.ipr_resource_entry* %0, %struct.ipr_config_table_entry_wrapper* %1) #0 {
  %3 = alloca %struct.ipr_resource_entry*, align 8
  %4 = alloca %struct.ipr_config_table_entry_wrapper*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ipr_resource_entry* %0, %struct.ipr_resource_entry** %3, align 8
  store %struct.ipr_config_table_entry_wrapper* %1, %struct.ipr_config_table_entry_wrapper** %4, align 8
  %9 = load i32, i32* @IPR_MAX_RES_PATH_LENGTH, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %14 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %13, i32 0, i32 6
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %130

19:                                               ; preds = %2
  %20 = load %struct.ipr_config_table_entry_wrapper*, %struct.ipr_config_table_entry_wrapper** %4, align 8
  %21 = getelementptr inbounds %struct.ipr_config_table_entry_wrapper, %struct.ipr_config_table_entry_wrapper* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %27 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.ipr_config_table_entry_wrapper*, %struct.ipr_config_table_entry_wrapper** %4, align 8
  %29 = getelementptr inbounds %struct.ipr_config_table_entry_wrapper, %struct.ipr_config_table_entry_wrapper* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %35 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %34, i32 0, i32 10
  store i32 %33, i32* %35, align 8
  %36 = load %struct.ipr_config_table_entry_wrapper*, %struct.ipr_config_table_entry_wrapper** %4, align 8
  %37 = getelementptr inbounds %struct.ipr_config_table_entry_wrapper, %struct.ipr_config_table_entry_wrapper* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %43 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %45 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %44, i32 0, i32 4
  %46 = load %struct.ipr_config_table_entry_wrapper*, %struct.ipr_config_table_entry_wrapper** %4, align 8
  %47 = getelementptr inbounds %struct.ipr_config_table_entry_wrapper, %struct.ipr_config_table_entry_wrapper* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 7
  %51 = call i32 @memcpy(i32* %45, i32* %50, i32 4)
  %52 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %53 = call i32 @IPR_QUEUEING_MODEL64(%struct.ipr_resource_entry* %52)
  %54 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %55 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load %struct.ipr_config_table_entry_wrapper*, %struct.ipr_config_table_entry_wrapper** %4, align 8
  %57 = getelementptr inbounds %struct.ipr_config_table_entry_wrapper, %struct.ipr_config_table_entry_wrapper* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %7, align 4
  %62 = load %struct.ipr_config_table_entry_wrapper*, %struct.ipr_config_table_entry_wrapper** %4, align 8
  %63 = getelementptr inbounds %struct.ipr_config_table_entry_wrapper, %struct.ipr_config_table_entry_wrapper* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %69 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load %struct.ipr_config_table_entry_wrapper*, %struct.ipr_config_table_entry_wrapper** %4, align 8
  %71 = getelementptr inbounds %struct.ipr_config_table_entry_wrapper, %struct.ipr_config_table_entry_wrapper* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %77 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %76, i32 0, i32 9
  store i32 %75, i32* %77, align 4
  %78 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %79 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %78, i32 0, i32 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load %struct.ipr_config_table_entry_wrapper*, %struct.ipr_config_table_entry_wrapper** %4, align 8
  %82 = getelementptr inbounds %struct.ipr_config_table_entry_wrapper, %struct.ipr_config_table_entry_wrapper* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 4
  %86 = call i32 @memcpy(i32* %80, i32* %85, i32 4)
  %87 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %88 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %87, i32 0, i32 5
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.ipr_config_table_entry_wrapper*, %struct.ipr_config_table_entry_wrapper** %4, align 8
  %91 = getelementptr inbounds %struct.ipr_config_table_entry_wrapper, %struct.ipr_config_table_entry_wrapper* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 3
  %95 = call i64 @memcmp(i32* %89, i32* %94, i32 8)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %19
  %98 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %99 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %98, i32 0, i32 5
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.ipr_config_table_entry_wrapper*, %struct.ipr_config_table_entry_wrapper** %4, align 8
  %102 = getelementptr inbounds %struct.ipr_config_table_entry_wrapper, %struct.ipr_config_table_entry_wrapper* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 3
  %106 = call i32 @memcpy(i32* %100, i32* %105, i32 8)
  store i32 1, i32* %8, align 4
  br label %107

107:                                              ; preds = %97, %19
  %108 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %109 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %108, i32 0, i32 7
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %129

112:                                              ; preds = %107
  %113 = load i32, i32* %8, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %129

115:                                              ; preds = %112
  %116 = load i32, i32* @KERN_INFO, align 4
  %117 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %118 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %117, i32 0, i32 7
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %121 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %120, i32 0, i32 6
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %121, align 8
  %123 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %124 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %123, i32 0, i32 5
  %125 = load i32*, i32** %124, align 8
  %126 = trunc i64 %10 to i32
  %127 = call i32 @ipr_format_res_path(%struct.TYPE_10__* %122, i32* %125, i8* %12, i32 %126)
  %128 = call i32 @sdev_printk(i32 %116, i64 %119, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %127)
  br label %129

129:                                              ; preds = %115, %112, %107
  br label %186

130:                                              ; preds = %2
  %131 = load %struct.ipr_config_table_entry_wrapper*, %struct.ipr_config_table_entry_wrapper** %4, align 8
  %132 = getelementptr inbounds %struct.ipr_config_table_entry_wrapper, %struct.ipr_config_table_entry_wrapper* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %138 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  %139 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %140 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @IPR_IS_IOA_RESOURCE, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %130
  %146 = load i32, i32* @IPR_RES_TYPE_IOAFP, align 4
  %147 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %148 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 4
  br label %159

149:                                              ; preds = %130
  %150 = load %struct.ipr_config_table_entry_wrapper*, %struct.ipr_config_table_entry_wrapper** %4, align 8
  %151 = getelementptr inbounds %struct.ipr_config_table_entry_wrapper, %struct.ipr_config_table_entry_wrapper* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = and i32 %155, 15
  %157 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %158 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %157, i32 0, i32 1
  store i32 %156, i32* %158, align 4
  br label %159

159:                                              ; preds = %149, %145
  %160 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %161 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %160, i32 0, i32 4
  %162 = load %struct.ipr_config_table_entry_wrapper*, %struct.ipr_config_table_entry_wrapper** %4, align 8
  %163 = getelementptr inbounds %struct.ipr_config_table_entry_wrapper, %struct.ipr_config_table_entry_wrapper* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 4
  %167 = call i32 @memcpy(i32* %161, i32* %166, i32 4)
  %168 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %169 = call i32 @IPR_QUEUEING_MODEL(%struct.ipr_resource_entry* %168)
  %170 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %171 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %170, i32 0, i32 3
  store i32 %169, i32* %171, align 4
  %172 = load %struct.ipr_config_table_entry_wrapper*, %struct.ipr_config_table_entry_wrapper** %4, align 8
  %173 = getelementptr inbounds %struct.ipr_config_table_entry_wrapper, %struct.ipr_config_table_entry_wrapper* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  store i32 %177, i32* %7, align 4
  %178 = load %struct.ipr_config_table_entry_wrapper*, %struct.ipr_config_table_entry_wrapper** %4, align 8
  %179 = getelementptr inbounds %struct.ipr_config_table_entry_wrapper, %struct.ipr_config_table_entry_wrapper* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %185 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %184, i32 0, i32 2
  store i32 %183, i32* %185, align 8
  br label %186

186:                                              ; preds = %159, %129
  %187 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %188 = load i32, i32* %7, align 4
  %189 = call i32 @ipr_update_ata_class(%struct.ipr_resource_entry* %187, i32 %188)
  %190 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %190)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @IPR_QUEUEING_MODEL64(%struct.ipr_resource_entry*) #2

declare dso_local i64 @memcmp(i32*, i32*, i32) #2

declare dso_local i32 @sdev_printk(i32, i64, i8*, i32) #2

declare dso_local i32 @ipr_format_res_path(%struct.TYPE_10__*, i32*, i8*, i32) #2

declare dso_local i32 @IPR_QUEUEING_MODEL(%struct.ipr_resource_entry*) #2

declare dso_local i32 @ipr_update_ata_class(%struct.ipr_resource_entry*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
