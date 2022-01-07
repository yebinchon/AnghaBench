; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_initio.c_initio_status_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_initio.c_initio_status_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.initio_host = type { i64, i32, i64, %struct.scsi_ctrl_blk* }
%struct.scsi_ctrl_blk = type { i32 }

@TSC_CMD_COMP = common dso_local global i32 0, align 4
@TUL_SCmd = common dso_local global i64 0, align 8
@TUL_SFifo = common dso_local global i64 0, align 8
@MSG_OUT = common dso_local global i64 0, align 8
@TSS_PAR_ERROR = common dso_local global i32 0, align 4
@MSG_PARITY = common dso_local global i32 0, align 4
@MSG_NOP = common dso_local global i32 0, align 4
@TSC_XF_FIFO_OUT = common dso_local global i32 0, align 4
@MSG_IN = common dso_local global i64 0, align 8
@TSC_FLUSH_FIFO = common dso_local global i32 0, align 4
@TUL_SCtrl0 = common dso_local global i64 0, align 8
@TSC_MSG_ACCEPT = common dso_local global i32 0, align 4
@MSG_LINK_COMP = common dso_local global i64 0, align 8
@MSG_LINK_FLAG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @initio_status_msg(%struct.initio_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.initio_host*, align 8
  %4 = alloca %struct.scsi_ctrl_blk*, align 8
  %5 = alloca i64, align 8
  store %struct.initio_host* %0, %struct.initio_host** %3, align 8
  %6 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %7 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %6, i32 0, i32 3
  %8 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %7, align 8
  store %struct.scsi_ctrl_blk* %8, %struct.scsi_ctrl_blk** %4, align 8
  %9 = load i32, i32* @TSC_CMD_COMP, align 4
  %10 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %11 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TUL_SCmd, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @outb(i32 %9, i64 %14)
  %16 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %17 = call i32 @wait_tulip(%struct.initio_host* %16)
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %170

20:                                               ; preds = %1
  %21 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %22 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TUL_SFifo, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i8* @inb(i64 %25)
  %27 = ptrtoint i8* %26 to i32
  %28 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %29 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %31 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @MSG_OUT, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %68

35:                                               ; preds = %20
  %36 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %37 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @TSS_PAR_ERROR, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %35
  %43 = load i32, i32* @MSG_PARITY, align 4
  %44 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %45 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @TUL_SFifo, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @outb(i32 %43, i64 %48)
  br label %58

50:                                               ; preds = %35
  %51 = load i32, i32* @MSG_NOP, align 4
  %52 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %53 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @TUL_SFifo, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @outb(i32 %51, i64 %56)
  br label %58

58:                                               ; preds = %50, %42
  %59 = load i32, i32* @TSC_XF_FIFO_OUT, align 4
  %60 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %61 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @TUL_SCmd, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @outb(i32 %59, i64 %64)
  %66 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %67 = call i32 @wait_tulip(%struct.initio_host* %66)
  store i32 %67, i32* %2, align 4
  br label %170

68:                                               ; preds = %20
  %69 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %70 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @MSG_IN, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %167

74:                                               ; preds = %68
  %75 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %76 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @TUL_SFifo, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i8* @inb(i64 %79)
  %81 = ptrtoint i8* %80 to i64
  store i64 %81, i64* %5, align 8
  %82 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %83 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @TSS_PAR_ERROR, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %119

88:                                               ; preds = %74
  %89 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %90 = call i32 @initio_msgin_accept(%struct.initio_host* %89)
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  store i32 -1, i32* %2, align 4
  br label %170

93:                                               ; preds = %88
  %94 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %95 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @MSG_OUT, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %101 = call i32 @initio_bad_seq(%struct.initio_host* %100)
  store i32 %101, i32* %2, align 4
  br label %170

102:                                              ; preds = %93
  %103 = load i32, i32* @MSG_PARITY, align 4
  %104 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %105 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @TUL_SFifo, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @outb(i32 %103, i64 %108)
  %110 = load i32, i32* @TSC_XF_FIFO_OUT, align 4
  %111 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %112 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @TUL_SCmd, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i32 @outb(i32 %110, i64 %115)
  %117 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %118 = call i32 @wait_tulip(%struct.initio_host* %117)
  store i32 %118, i32* %2, align 4
  br label %170

119:                                              ; preds = %74
  %120 = load i64, i64* %5, align 8
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %148

122:                                              ; preds = %119
  %123 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %124 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = and i32 %125, 24
  %127 = icmp eq i32 %126, 16
  br i1 %127, label %128, label %131

128:                                              ; preds = %122
  %129 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %130 = call i32 @initio_bad_seq(%struct.initio_host* %129)
  store i32 %130, i32* %2, align 4
  br label %170

131:                                              ; preds = %122
  %132 = load i32, i32* @TSC_FLUSH_FIFO, align 4
  %133 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %134 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @TUL_SCtrl0, align 8
  %137 = add nsw i64 %135, %136
  %138 = call i32 @outb(i32 %132, i64 %137)
  %139 = load i32, i32* @TSC_MSG_ACCEPT, align 4
  %140 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %141 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @TUL_SCmd, align 8
  %144 = add nsw i64 %142, %143
  %145 = call i32 @outb(i32 %139, i64 %144)
  %146 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %147 = call i32 @initio_wait_done_disc(%struct.initio_host* %146)
  store i32 %147, i32* %2, align 4
  br label %170

148:                                              ; preds = %119
  %149 = load i64, i64* %5, align 8
  %150 = load i64, i64* @MSG_LINK_COMP, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %156, label %152

152:                                              ; preds = %148
  %153 = load i64, i64* %5, align 8
  %154 = load i64, i64* @MSG_LINK_FLAG, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %166

156:                                              ; preds = %152, %148
  %157 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %158 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = and i32 %159, 24
  %161 = icmp eq i32 %160, 16
  br i1 %161, label %162, label %165

162:                                              ; preds = %156
  %163 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %164 = call i32 @initio_msgin_accept(%struct.initio_host* %163)
  store i32 %164, i32* %2, align 4
  br label %170

165:                                              ; preds = %156
  br label %166

166:                                              ; preds = %165, %152
  br label %167

167:                                              ; preds = %166, %68
  %168 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %169 = call i32 @initio_bad_seq(%struct.initio_host* %168)
  store i32 %169, i32* %2, align 4
  br label %170

170:                                              ; preds = %167, %162, %131, %128, %102, %99, %92, %58, %19
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @wait_tulip(%struct.initio_host*) #1

declare dso_local i8* @inb(i64) #1

declare dso_local i32 @initio_msgin_accept(%struct.initio_host*) #1

declare dso_local i32 @initio_bad_seq(%struct.initio_host*) #1

declare dso_local i32 @initio_wait_done_disc(%struct.initio_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
