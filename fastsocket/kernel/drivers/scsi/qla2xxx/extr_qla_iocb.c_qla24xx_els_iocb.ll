; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla24xx_els_iocb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla24xx_els_iocb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_25__*, i32, %struct.TYPE_17__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__, %struct.TYPE_18__*, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { %struct.fc_bsg_job* }
%struct.fc_bsg_job = type { %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_22__* }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__, %struct.TYPE_19__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.els_entry_24xx = type { i32, i8*, i8**, i8*, i8**, i8*, i8*, i64, i32*, i32, i8*, i32, i32, i8*, i32, i32, i64, i64, i32 }

@ELS_IOCB_TYPE = common dso_local global i32 0, align 4
@EST_SOFI3 = common dso_local global i32 0, align 4
@SRB_ELS_CMD_RPT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.els_entry_24xx*)* @qla24xx_els_iocb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla24xx_els_iocb(%struct.TYPE_16__* %0, %struct.els_entry_24xx* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.els_entry_24xx*, align 8
  %5 = alloca %struct.fc_bsg_job*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store %struct.els_entry_24xx* %1, %struct.els_entry_24xx** %4, align 8
  %6 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %9 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %8, align 8
  store %struct.fc_bsg_job* %9, %struct.fc_bsg_job** %5, align 8
  %10 = load i32, i32* @ELS_IOCB_TYPE, align 4
  %11 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %12 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %11, i32 0, i32 18
  store i32 %10, i32* %12, align 8
  %13 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %14 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %16 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %15, i32 0, i32 17
  store i64 0, i64* %16, align 8
  %17 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %18 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %17, i32 0, i32 16
  store i64 0, i64* %18, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %23 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %22, i32 0, i32 15
  store i32 %21, i32* %23, align 4
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @cpu_to_le16(i32 %28)
  %30 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %31 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %30, i32 0, i32 14
  store i32 %29, i32* %31, align 8
  %32 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %5, align 8
  %33 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @__constant_cpu_to_le16(i32 %35)
  %37 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %38 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %37, i32 0, i32 13
  store i8* %36, i8** %38, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %47 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %46, i32 0, i32 12
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @EST_SOFI3, align 4
  %49 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %50 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %49, i32 0, i32 11
  store i32 %48, i32* %50, align 8
  %51 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %5, align 8
  %52 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i8* @__constant_cpu_to_le16(i32 %54)
  %56 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %57 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %56, i32 0, i32 10
  store i8* %55, i8** %57, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @SRB_ELS_CMD_RPT, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %2
  %64 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %5, align 8
  %65 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %64, i32 0, i32 2
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  br label %79

71:                                               ; preds = %2
  %72 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %5, align 8
  %73 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %72, i32 0, i32 2
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  br label %79

79:                                               ; preds = %71, %63
  %80 = phi i32 [ %70, %63 ], [ %78, %71 ]
  %81 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %82 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %81, i32 0, i32 9
  store i32 %80, i32* %82, align 8
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %91 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %90, i32 0, i32 8
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  store i32 %89, i32* %93, align 4
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %102 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %101, i32 0, i32 8
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  store i32 %100, i32* %104, align 4
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_25__*, %struct.TYPE_25__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %113 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %112, i32 0, i32 8
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 2
  store i32 %111, i32* %115, align 4
  %116 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %117 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %116, i32 0, i32 7
  store i64 0, i64* %117, align 8
  %118 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %5, align 8
  %119 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i8* @cpu_to_le32(i32 %121)
  %123 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %124 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %123, i32 0, i32 6
  store i8* %122, i8** %124, align 8
  %125 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %5, align 8
  %126 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i8* @cpu_to_le32(i32 %128)
  %130 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %131 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %130, i32 0, i32 5
  store i8* %129, i8** %131, align 8
  %132 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %5, align 8
  %133 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @sg_dma_address(i32 %135)
  %137 = call i32 @LSD(i32 %136)
  %138 = call i8* @cpu_to_le32(i32 %137)
  %139 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %140 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %139, i32 0, i32 4
  %141 = load i8**, i8*** %140, align 8
  %142 = getelementptr inbounds i8*, i8** %141, i64 0
  store i8* %138, i8** %142, align 8
  %143 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %5, align 8
  %144 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @sg_dma_address(i32 %146)
  %148 = call i32 @MSD(i32 %147)
  %149 = call i8* @cpu_to_le32(i32 %148)
  %150 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %151 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %150, i32 0, i32 4
  %152 = load i8**, i8*** %151, align 8
  %153 = getelementptr inbounds i8*, i8** %152, i64 1
  store i8* %149, i8** %153, align 8
  %154 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %5, align 8
  %155 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @sg_dma_len(i32 %157)
  %159 = call i8* @cpu_to_le32(i32 %158)
  %160 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %161 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %160, i32 0, i32 3
  store i8* %159, i8** %161, align 8
  %162 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %5, align 8
  %163 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @sg_dma_address(i32 %165)
  %167 = call i32 @LSD(i32 %166)
  %168 = call i8* @cpu_to_le32(i32 %167)
  %169 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %170 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %169, i32 0, i32 2
  %171 = load i8**, i8*** %170, align 8
  %172 = getelementptr inbounds i8*, i8** %171, i64 0
  store i8* %168, i8** %172, align 8
  %173 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %5, align 8
  %174 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @sg_dma_address(i32 %176)
  %178 = call i32 @MSD(i32 %177)
  %179 = call i8* @cpu_to_le32(i32 %178)
  %180 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %181 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %180, i32 0, i32 2
  %182 = load i8**, i8*** %181, align 8
  %183 = getelementptr inbounds i8*, i8** %182, i64 1
  store i8* %179, i8** %183, align 8
  %184 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %5, align 8
  %185 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @sg_dma_len(i32 %187)
  %189 = call i8* @cpu_to_le32(i32 %188)
  %190 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %191 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %190, i32 0, i32 1
  store i8* %189, i8** %191, align 8
  ret void
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i8* @__constant_cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @LSD(i32) #1

declare dso_local i32 @sg_dma_address(i32) #1

declare dso_local i32 @MSD(i32) #1

declare dso_local i32 @sg_dma_len(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
