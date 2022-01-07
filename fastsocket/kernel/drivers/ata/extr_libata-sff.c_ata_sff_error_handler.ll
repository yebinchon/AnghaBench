; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-sff.c_ata_sff_error_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-sff.c_ata_sff_error_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_7__*, %struct.TYPE_8__, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i32 (%struct.ata_port*)*, i32, i32, i32 (%struct.ata_queued_cmd*)*, i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)*, i32 (%struct.ata_queued_cmd*)*, i32*, i32* }
%struct.ata_queued_cmd = type { i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32, i64 }

@ATA_QCFLAG_FAILED = common dso_local global i32 0, align 4
@ATA_PROT_DMA = common dso_local global i64 0, align 8
@ATAPI_PROT_DMA = common dso_local global i64 0, align 8
@AC_ERR_TIMEOUT = common dso_local global i64 0, align 8
@ATA_DMA_ERR = common dso_local global i32 0, align 4
@AC_ERR_HOST_BUS = common dso_local global i64 0, align 8
@ata_sff_softreset = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_sff_error_handler(%struct.ata_port* %0) #0 {
  %2 = alloca %struct.ata_port*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ata_queued_cmd*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %2, align 8
  %9 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %10 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %9, i32 0, i32 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 8
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %3, align 8
  %14 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %15 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 7
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %4, align 8
  store i32 0, i32* %7, align 4
  %19 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %20 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %21 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.ata_queued_cmd* @__ata_qc_from_tag(%struct.ata_port* %19, i32 %23)
  store %struct.ata_queued_cmd* %24, %struct.ata_queued_cmd** %5, align 8
  %25 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %26 = icmp ne %struct.ata_queued_cmd* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %1
  %28 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %29 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @ATA_QCFLAG_FAILED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  store %struct.ata_queued_cmd* null, %struct.ata_queued_cmd** %5, align 8
  br label %35

35:                                               ; preds = %34, %27, %1
  %36 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %37 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @spin_lock_irqsave(i32 %38, i64 %39)
  %41 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %42 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %93

46:                                               ; preds = %35
  %47 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %48 = icmp ne %struct.ata_queued_cmd* %47, null
  br i1 %48, label %49, label %93

49:                                               ; preds = %46
  %50 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %51 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @ATA_PROT_DMA, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %63, label %56

56:                                               ; preds = %49
  %57 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %58 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @ATAPI_PROT_DMA, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %93

63:                                               ; preds = %56, %49
  %64 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %65 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %64, i32 0, i32 0
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)** %67, align 8
  %69 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %70 = call i32 %68(%struct.ata_port* %69)
  store i32 %70, i32* %8, align 4
  %71 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %72 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @AC_ERR_TIMEOUT, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %63
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @ATA_DMA_ERR, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load i64, i64* @AC_ERR_HOST_BUS, align 8
  %83 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %84 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  store i32 1, i32* %7, align 4
  br label %85

85:                                               ; preds = %81, %76, %63
  %86 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %87 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %86, i32 0, i32 0
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 6
  %90 = load i32 (%struct.ata_queued_cmd*)*, i32 (%struct.ata_queued_cmd*)** %89, align 8
  %91 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %92 = call i32 %90(%struct.ata_queued_cmd* %91)
  br label %93

93:                                               ; preds = %85, %56, %46, %35
  %94 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %95 = call i32 @ata_sff_sync(%struct.ata_port* %94)
  %96 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %97 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %96, i32 0, i32 0
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 5
  %100 = load i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)** %99, align 8
  %101 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %102 = call i32 %100(%struct.ata_port* %101)
  %103 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %104 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %103, i32 0, i32 0
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 4
  %107 = load i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)** %106, align 8
  %108 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %109 = call i32 %107(%struct.ata_port* %108)
  %110 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %111 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %110, i32 0, i32 0
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 3
  %114 = load i32 (%struct.ata_queued_cmd*)*, i32 (%struct.ata_queued_cmd*)** %113, align 8
  %115 = icmp ne i32 (%struct.ata_queued_cmd*)* %114, null
  br i1 %115, label %116, label %124

116:                                              ; preds = %93
  %117 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %118 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %117, i32 0, i32 0
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 3
  %121 = load i32 (%struct.ata_queued_cmd*)*, i32 (%struct.ata_queued_cmd*)** %120, align 8
  %122 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %123 = call i32 %121(%struct.ata_queued_cmd* %122)
  br label %124

124:                                              ; preds = %116, %93
  %125 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %126 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = load i64, i64* %6, align 8
  %129 = call i32 @spin_unlock_irqrestore(i32 %127, i64 %128)
  %130 = load i32, i32* %7, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %124
  %133 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %134 = call i32 @ata_eh_thaw_port(%struct.ata_port* %133)
  br label %135

135:                                              ; preds = %132, %124
  %136 = load i32*, i32** %3, align 8
  %137 = load i32*, i32** @ata_sff_softreset, align 8
  %138 = icmp eq i32* %136, %137
  br i1 %138, label %139, label %146

139:                                              ; preds = %135
  %140 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %141 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %139
  store i32* null, i32** %3, align 8
  br label %146

146:                                              ; preds = %145, %139, %135
  %147 = load i32*, i32** %4, align 8
  %148 = call i64 @ata_is_builtin_hardreset(i32* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %146
  %151 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %152 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %151, i32 0, i32 1
  %153 = call i32 @sata_scr_valid(%struct.TYPE_8__* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %150
  store i32* null, i32** %4, align 8
  br label %156

156:                                              ; preds = %155, %150, %146
  %157 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %158 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %159 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %158, i32 0, i32 0
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = load i32*, i32** %3, align 8
  %164 = load i32*, i32** %4, align 8
  %165 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %166 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %165, i32 0, i32 0
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @ata_do_eh(%struct.ata_port* %157, i32 %162, i32* %163, i32* %164, i32 %169)
  ret void
}

declare dso_local %struct.ata_queued_cmd* @__ata_qc_from_tag(%struct.ata_port*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @ata_sff_sync(%struct.ata_port*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @ata_eh_thaw_port(%struct.ata_port*) #1

declare dso_local i64 @ata_is_builtin_hardreset(i32*) #1

declare dso_local i32 @sata_scr_valid(%struct.TYPE_8__*) #1

declare dso_local i32 @ata_do_eh(%struct.ata_port*, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
