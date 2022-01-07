; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_frame_auto_sense.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_frame_auto_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcraid_cmd = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32*, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.pmcraid_resource_entry* }
%struct.pmcraid_resource_entry = type { i32 }
%struct.TYPE_7__ = type { %struct.pmcraid_ioasa }
%struct.pmcraid_ioasa = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64 }

@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@SAM_STAT_CHECK_CONDITION = common dso_local global i32 0, align 4
@PMCRAID_IOASC_ME_READ_ERROR_NO_REALLOC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmcraid_cmd*)* @pmcraid_frame_auto_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmcraid_frame_auto_sense(%struct.pmcraid_cmd* %0) #0 {
  %2 = alloca %struct.pmcraid_cmd*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.pmcraid_resource_entry*, align 8
  %5 = alloca %struct.pmcraid_ioasa*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.pmcraid_cmd* %0, %struct.pmcraid_cmd** %2, align 8
  %8 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %9 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %8, i32 0, i32 0
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %3, align 8
  %13 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %14 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %18, align 8
  store %struct.pmcraid_resource_entry* %19, %struct.pmcraid_resource_entry** %4, align 8
  %20 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %21 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %20, i32 0, i32 1
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  store %struct.pmcraid_ioasa* %23, %struct.pmcraid_ioasa** %5, align 8
  %24 = load %struct.pmcraid_ioasa*, %struct.pmcraid_ioasa** %5, align 8
  %25 = getelementptr inbounds %struct.pmcraid_ioasa, %struct.pmcraid_ioasa* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @le32_to_cpu(i64 %26)
  store i64 %27, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %30 = call i32 @memset(i32* %28, i32 0, i32 %29)
  %31 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %32 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %33 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  store i32 %31, i32* %35, align 8
  %36 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %4, align 8
  %37 = getelementptr inbounds %struct.pmcraid_resource_entry, %struct.pmcraid_resource_entry* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @RES_IS_VSET(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %133

41:                                               ; preds = %1
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @PMCRAID_IOASC_ME_READ_ERROR_NO_REALLOC, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %133

45:                                               ; preds = %41
  %46 = load %struct.pmcraid_ioasa*, %struct.pmcraid_ioasa** %5, align 8
  %47 = getelementptr inbounds %struct.pmcraid_ioasa, %struct.pmcraid_ioasa* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %133

52:                                               ; preds = %45
  %53 = load i32*, i32** %3, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 114, i32* %54, align 4
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @PMCRAID_IOASC_SENSE_KEY(i64 %55)
  %57 = load i32*, i32** %3, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  store i32 %56, i32* %58, align 4
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @PMCRAID_IOASC_SENSE_CODE(i64 %59)
  %61 = load i32*, i32** %3, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  store i32 %60, i32* %62, align 4
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @PMCRAID_IOASC_SENSE_QUAL(i64 %63)
  %65 = load i32*, i32** %3, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 3
  store i32 %64, i32* %66, align 4
  %67 = load i32*, i32** %3, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 7
  store i32 12, i32* %68, align 4
  %69 = load i32*, i32** %3, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 8
  store i32 0, i32* %70, align 4
  %71 = load i32*, i32** %3, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 9
  store i32 10, i32* %72, align 4
  %73 = load i32*, i32** %3, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 10
  store i32 128, i32* %74, align 4
  %75 = load %struct.pmcraid_ioasa*, %struct.pmcraid_ioasa** %5, align 8
  %76 = getelementptr inbounds %struct.pmcraid_ioasa, %struct.pmcraid_ioasa* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i64 @le32_to_cpu(i64 %79)
  store i64 %80, i64* %7, align 8
  %81 = load i64, i64* %7, align 8
  %82 = and i64 %81, 4278190080
  %83 = ashr i64 %82, 24
  %84 = trunc i64 %83 to i32
  %85 = load i32*, i32** %3, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 12
  store i32 %84, i32* %86, align 4
  %87 = load i64, i64* %7, align 8
  %88 = and i64 %87, 16711680
  %89 = ashr i64 %88, 16
  %90 = trunc i64 %89 to i32
  %91 = load i32*, i32** %3, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 13
  store i32 %90, i32* %92, align 4
  %93 = load i64, i64* %7, align 8
  %94 = and i64 %93, 65280
  %95 = ashr i64 %94, 8
  %96 = trunc i64 %95 to i32
  %97 = load i32*, i32** %3, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 14
  store i32 %96, i32* %98, align 4
  %99 = load i64, i64* %7, align 8
  %100 = and i64 %99, 255
  %101 = trunc i64 %100 to i32
  %102 = load i32*, i32** %3, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 15
  store i32 %101, i32* %103, align 4
  %104 = load %struct.pmcraid_ioasa*, %struct.pmcraid_ioasa** %5, align 8
  %105 = getelementptr inbounds %struct.pmcraid_ioasa, %struct.pmcraid_ioasa* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = call i64 @le32_to_cpu(i64 %108)
  store i64 %109, i64* %7, align 8
  %110 = load i64, i64* %7, align 8
  %111 = and i64 %110, 4278190080
  %112 = ashr i64 %111, 24
  %113 = trunc i64 %112 to i32
  %114 = load i32*, i32** %3, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 16
  store i32 %113, i32* %115, align 4
  %116 = load i64, i64* %7, align 8
  %117 = and i64 %116, 16711680
  %118 = ashr i64 %117, 16
  %119 = trunc i64 %118 to i32
  %120 = load i32*, i32** %3, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 17
  store i32 %119, i32* %121, align 4
  %122 = load i64, i64* %7, align 8
  %123 = and i64 %122, 65280
  %124 = ashr i64 %123, 8
  %125 = trunc i64 %124 to i32
  %126 = load i32*, i32** %3, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 18
  store i32 %125, i32* %127, align 4
  %128 = load i64, i64* %7, align 8
  %129 = and i64 %128, 255
  %130 = trunc i64 %129 to i32
  %131 = load i32*, i32** %3, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 19
  store i32 %130, i32* %132, align 4
  br label %195

133:                                              ; preds = %45, %41, %1
  %134 = load i32*, i32** %3, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  store i32 112, i32* %135, align 4
  %136 = load i64, i64* %6, align 8
  %137 = call i32 @PMCRAID_IOASC_SENSE_KEY(i64 %136)
  %138 = load i32*, i32** %3, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 2
  store i32 %137, i32* %139, align 4
  %140 = load i64, i64* %6, align 8
  %141 = call i32 @PMCRAID_IOASC_SENSE_CODE(i64 %140)
  %142 = load i32*, i32** %3, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 12
  store i32 %141, i32* %143, align 4
  %144 = load i64, i64* %6, align 8
  %145 = call i32 @PMCRAID_IOASC_SENSE_QUAL(i64 %144)
  %146 = load i32*, i32** %3, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 13
  store i32 %145, i32* %147, align 4
  %148 = load i64, i64* %6, align 8
  %149 = load i64, i64* @PMCRAID_IOASC_ME_READ_ERROR_NO_REALLOC, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %192

151:                                              ; preds = %133
  %152 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %4, align 8
  %153 = getelementptr inbounds %struct.pmcraid_resource_entry, %struct.pmcraid_resource_entry* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i64 @RES_IS_VSET(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %151
  %158 = load %struct.pmcraid_ioasa*, %struct.pmcraid_ioasa** %5, align 8
  %159 = getelementptr inbounds %struct.pmcraid_ioasa, %struct.pmcraid_ioasa* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = call i64 @le32_to_cpu(i64 %162)
  store i64 %163, i64* %7, align 8
  br label %164

164:                                              ; preds = %157, %151
  %165 = load i32*, i32** %3, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 0
  %167 = load i32, i32* %166, align 4
  %168 = or i32 %167, 128
  store i32 %168, i32* %166, align 4
  %169 = load i64, i64* %7, align 8
  %170 = ashr i64 %169, 24
  %171 = and i64 %170, 255
  %172 = trunc i64 %171 to i32
  %173 = load i32*, i32** %3, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 3
  store i32 %172, i32* %174, align 4
  %175 = load i64, i64* %7, align 8
  %176 = ashr i64 %175, 16
  %177 = and i64 %176, 255
  %178 = trunc i64 %177 to i32
  %179 = load i32*, i32** %3, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 4
  store i32 %178, i32* %180, align 4
  %181 = load i64, i64* %7, align 8
  %182 = ashr i64 %181, 8
  %183 = and i64 %182, 255
  %184 = trunc i64 %183 to i32
  %185 = load i32*, i32** %3, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 5
  store i32 %184, i32* %186, align 4
  %187 = load i64, i64* %7, align 8
  %188 = and i64 %187, 255
  %189 = trunc i64 %188 to i32
  %190 = load i32*, i32** %3, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 6
  store i32 %189, i32* %191, align 4
  br label %192

192:                                              ; preds = %164, %133
  %193 = load i32*, i32** %3, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 7
  store i32 6, i32* %194, align 4
  br label %195

195:                                              ; preds = %192, %52
  ret void
}

declare dso_local i64 @le32_to_cpu(i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @RES_IS_VSET(i32) #1

declare dso_local i32 @PMCRAID_IOASC_SENSE_KEY(i64) #1

declare dso_local i32 @PMCRAID_IOASC_SENSE_CODE(i64) #1

declare dso_local i32 @PMCRAID_IOASC_SENSE_QUAL(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
