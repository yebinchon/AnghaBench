; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_mbox.c_lpfc_init_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_mbox.c_lpfc_init_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, %struct.TYPE_14__, %struct.lpfc_sli }
%struct.TYPE_14__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.lpfc_sli = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_13__, i32, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i8* }

@FLAGS_TOPOLOGY_FAILOVER = common dso_local global i32 0, align 4
@FLAGS_IMED_ABORT = common dso_local global i32 0, align 4
@FLAGS_LINK_SPEED = common dso_local global i32 0, align 4
@LINK_SPEED_1G = common dso_local global i8* null, align 8
@LINK_SPEED_2G = common dso_local global i8* null, align 8
@LINK_SPEED_4G = common dso_local global i8* null, align 8
@LINK_SPEED_8G = common dso_local global i8* null, align 8
@LINK_SPEED_10G = common dso_local global i8* null, align 8
@LINK_SPEED_16G = common dso_local global i8* null, align 8
@LINK_SPEED_AUTO = common dso_local global i8* null, align 8
@MBX_INIT_LINK = common dso_local global i64 0, align 8
@OWN_HOST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_init_link(%struct.lpfc_hba* %0, %struct.TYPE_16__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.lpfc_sli*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %11, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %16 = call i32 @memset(%struct.TYPE_16__* %15, i32 0, i32 32)
  %17 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %18 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %17, i32 0, i32 2
  store %struct.lpfc_sli* %18, %struct.lpfc_sli** %10, align 8
  %19 = load i32, i32* %7, align 4
  switch i32 %19, label %59 [
    i32 137, label %20
    i32 135, label %32
    i32 138, label %37
    i32 136, label %42
    i32 139, label %54
  ]

20:                                               ; preds = %4
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  store i32 138, i32* %24, align 8
  %25 = load i32, i32* @FLAGS_TOPOLOGY_FAILOVER, align 4
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %25
  store i32 %31, i32* %29, align 8
  br label %59

32:                                               ; preds = %4
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  store i32 135, i32* %36, align 8
  br label %59

37:                                               ; preds = %4
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  store i32 138, i32* %41, align 8
  br label %59

42:                                               ; preds = %4
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  store i32 135, i32* %46, align 8
  %47 = load i32, i32* @FLAGS_TOPOLOGY_FAILOVER, align 4
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %47
  store i32 %53, i32* %51, align 8
  br label %59

54:                                               ; preds = %4
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  store i32 139, i32* %58, align 8
  br label %59

59:                                               ; preds = %4, %54, %42, %37, %32, %20
  %60 = load i32, i32* @FLAGS_IMED_ABORT, align 4
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %60
  store i32 %66, i32* %64, align 8
  %67 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %68 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %67, i32 0, i32 1
  store %struct.TYPE_14__* %68, %struct.TYPE_14__** %9, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp sge i32 %72, 2
  br i1 %73, label %74, label %162

74:                                               ; preds = %59
  %75 = load i32, i32* %8, align 4
  switch i32 %75, label %155 [
    i32 132, label %76
    i32 131, label %89
    i32 130, label %102
    i32 129, label %115
    i32 134, label %128
    i32 133, label %141
    i32 128, label %154
  ]

76:                                               ; preds = %74
  %77 = load i32, i32* @FLAGS_LINK_SPEED, align 4
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %77
  store i32 %83, i32* %81, align 8
  %84 = load i8*, i8** @LINK_SPEED_1G, align 8
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 2
  store i8* %84, i8** %88, align 8
  br label %161

89:                                               ; preds = %74
  %90 = load i32, i32* @FLAGS_LINK_SPEED, align 4
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %90
  store i32 %96, i32* %94, align 8
  %97 = load i8*, i8** @LINK_SPEED_2G, align 8
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 2
  store i8* %97, i8** %101, align 8
  br label %161

102:                                              ; preds = %74
  %103 = load i32, i32* @FLAGS_LINK_SPEED, align 4
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %103
  store i32 %109, i32* %107, align 8
  %110 = load i8*, i8** @LINK_SPEED_4G, align 8
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 2
  store i8* %110, i8** %114, align 8
  br label %161

115:                                              ; preds = %74
  %116 = load i32, i32* @FLAGS_LINK_SPEED, align 4
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = or i32 %121, %116
  store i32 %122, i32* %120, align 8
  %123 = load i8*, i8** @LINK_SPEED_8G, align 8
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 2
  store i8* %123, i8** %127, align 8
  br label %161

128:                                              ; preds = %74
  %129 = load i32, i32* @FLAGS_LINK_SPEED, align 4
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = or i32 %134, %129
  store i32 %135, i32* %133, align 8
  %136 = load i8*, i8** @LINK_SPEED_10G, align 8
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 2
  store i8* %136, i8** %140, align 8
  br label %161

141:                                              ; preds = %74
  %142 = load i32, i32* @FLAGS_LINK_SPEED, align 4
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = or i32 %147, %142
  store i32 %148, i32* %146, align 8
  %149 = load i8*, i8** @LINK_SPEED_16G, align 8
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 2
  store i8* %149, i8** %153, align 8
  br label %161

154:                                              ; preds = %74
  br label %155

155:                                              ; preds = %74, %154
  %156 = load i8*, i8** @LINK_SPEED_AUTO, align 8
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 2
  store i8* %156, i8** %160, align 8
  br label %161

161:                                              ; preds = %155, %141, %128, %115, %102, %89, %76
  br label %168

162:                                              ; preds = %59
  %163 = load i8*, i8** @LINK_SPEED_AUTO, align 8
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 2
  store i8* %163, i8** %167, align 8
  br label %168

168:                                              ; preds = %162, %161
  %169 = load i64, i64* @MBX_INIT_LINK, align 8
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 2
  store i64 %169, i64* %171, align 8
  %172 = load i32, i32* @OWN_HOST, align 4
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 8
  %175 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %176 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 1
  store i32 %177, i32* %181, align 4
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
