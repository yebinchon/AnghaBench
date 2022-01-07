; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_wd33c93.c_transfer_bytes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_wd33c93.c_transfer_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i64, i64, i64, %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.WD33C93_hostdata = type { i32*, i32, i64, i32, i32, i32, i32, i64 (%struct.scsi_cmnd*, i32)*, i64 }

@WD_SYNCHRONOUS_TRANSFER = common dso_local global i32 0, align 4
@WD_CONTROL = common dso_local global i32 0, align 4
@CTRL_IDI = common dso_local global i32 0, align 4
@CTRL_EDI = common dso_local global i32 0, align 4
@L2_DATA = common dso_local global i64 0, align 8
@L2_BASIC = common dso_local global i64 0, align 8
@WD_COMMAND_PHASE = common dso_local global i32 0, align 4
@WD_CMD_SEL_ATN_XFER = common dso_local global i32 0, align 4
@S_RUNNING_LEVEL2 = common dso_local global i32 0, align 4
@WD_CMD_TRANS_INFO = common dso_local global i32 0, align 4
@D_DMA_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.scsi_cmnd*, i32)* @transfer_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transfer_bytes(i32 %0, %struct.scsi_cmnd* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.WD33C93_hostdata*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %10 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %9, i32 0, i32 1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.WD33C93_hostdata*
  store %struct.WD33C93_hostdata* %16, %struct.WD33C93_hostdata** %7, align 8
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %18 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %56, label %22

22:                                               ; preds = %3
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %24 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %56

28:                                               ; preds = %22
  %29 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %30 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 3
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 1
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %31, align 8
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %35 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, -1
  store i64 %38, i64* %36, align 8
  %39 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %40 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %46 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  store i64 %44, i64* %47, align 8
  %48 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %49 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 3
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = call i64 @sg_virt(%struct.TYPE_8__* %51)
  %53 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %54 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  store i64 %52, i64* %55, align 8
  br label %56

56:                                               ; preds = %28, %22, %3
  %57 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %58 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %56
  br label %175

63:                                               ; preds = %56
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @WD_SYNCHRONOUS_TRANSFER, align 4
  %66 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %7, align 8
  %67 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %70 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %69, i32 0, i32 1
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i32, i32* %68, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @write_wd33c93(i32 %64, i32 %65, i32 %75)
  %77 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %7, align 8
  %78 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %77, i32 0, i32 8
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %63
  %82 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %7, align 8
  %83 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %82, i32 0, i32 7
  %84 = load i64 (%struct.scsi_cmnd*, i32)*, i64 (%struct.scsi_cmnd*, i32)** %83, align 8
  %85 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %86 = load i32, i32* %6, align 4
  %87 = call i64 %84(%struct.scsi_cmnd* %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %123

89:                                               ; preds = %81, %63
  %90 = load i32, i32* %4, align 4
  %91 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %92 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to i32*
  %96 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %97 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %7, align 8
  %102 = call i32 @transfer_pio(i32 %90, i32* %95, i64 %99, i32 %100, %struct.WD33C93_hostdata* %101)
  %103 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %104 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %8, align 8
  %107 = load i32, i32* %4, align 4
  %108 = call i64 @read_wd33c93_count(i32 %107)
  %109 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %110 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  store i64 %108, i64* %111, align 8
  %112 = load i64, i64* %8, align 8
  %113 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %114 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = sub i64 %112, %116
  %118 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %119 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = add i64 %121, %117
  store i64 %122, i64* %120, align 8
  br label %175

123:                                              ; preds = %81
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* @WD_CONTROL, align 4
  %126 = load i32, i32* @CTRL_IDI, align 4
  %127 = load i32, i32* @CTRL_EDI, align 4
  %128 = or i32 %126, %127
  %129 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %7, align 8
  %130 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = or i32 %128, %131
  %133 = call i32 @write_wd33c93(i32 %124, i32 %125, i32 %132)
  %134 = load i32, i32* %4, align 4
  %135 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %136 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @write_wd33c93_count(i32 %134, i64 %138)
  %140 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %7, align 8
  %141 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @L2_DATA, align 8
  %144 = icmp sge i64 %142, %143
  br i1 %144, label %157, label %145

145:                                              ; preds = %123
  %146 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %7, align 8
  %147 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @L2_BASIC, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %167

151:                                              ; preds = %145
  %152 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %153 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %167

157:                                              ; preds = %151, %123
  %158 = load i32, i32* %4, align 4
  %159 = load i32, i32* @WD_COMMAND_PHASE, align 4
  %160 = call i32 @write_wd33c93(i32 %158, i32 %159, i32 69)
  %161 = load i32, i32* %4, align 4
  %162 = load i32, i32* @WD_CMD_SEL_ATN_XFER, align 4
  %163 = call i32 @write_wd33c93_cmd(i32 %161, i32 %162)
  %164 = load i32, i32* @S_RUNNING_LEVEL2, align 4
  %165 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %7, align 8
  %166 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %165, i32 0, i32 4
  store i32 %164, i32* %166, align 4
  br label %171

167:                                              ; preds = %151, %145
  %168 = load i32, i32* %4, align 4
  %169 = load i32, i32* @WD_CMD_TRANS_INFO, align 4
  %170 = call i32 @write_wd33c93_cmd(i32 %168, i32 %169)
  br label %171

171:                                              ; preds = %167, %157
  %172 = load i32, i32* @D_DMA_RUNNING, align 4
  %173 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %7, align 8
  %174 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %173, i32 0, i32 3
  store i32 %172, i32* %174, align 8
  br label %175

175:                                              ; preds = %62, %171, %89
  ret void
}

declare dso_local i64 @sg_virt(%struct.TYPE_8__*) #1

declare dso_local i32 @write_wd33c93(i32, i32, i32) #1

declare dso_local i32 @transfer_pio(i32, i32*, i64, i32, %struct.WD33C93_hostdata*) #1

declare dso_local i64 @read_wd33c93_count(i32) #1

declare dso_local i32 @write_wd33c93_count(i32, i64) #1

declare dso_local i32 @write_wd33c93_cmd(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
