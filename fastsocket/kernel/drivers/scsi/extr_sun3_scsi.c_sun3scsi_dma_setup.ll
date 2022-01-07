; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sun3_scsi.c_sun3scsi_dma_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sun3_scsi.c_sun3scsi_dma_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i64, i32, i32, i32 }

@sun3_dma_orig_addr = common dso_local global i32* null, align 8
@sun3_dma_orig_count = common dso_local global i64 0, align 8
@dregs = common dso_local global %struct.TYPE_9__* null, align 8
@UDC_RESET = common dso_local global i32 0, align 4
@UDC_CSR = common dso_local global i32 0, align 4
@CSR_FIFO = common dso_local global i32 0, align 4
@CSR_SEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"scsi%d: fifo_mismatch %04x not %04x\0A\00", align 1
@default_instance = common dso_local global %struct.TYPE_10__* null, align 8
@udc_regs = common dso_local global %struct.TYPE_8__* null, align 8
@UDC_MODE_HIWORD = common dso_local global i32 0, align 4
@UDC_MODE_LSEND = common dso_local global i32 0, align 4
@UDC_RSEL_SEND = common dso_local global i32 0, align 4
@UDC_MODE_LRECV = common dso_local global i32 0, align 4
@UDC_RSEL_RECV = common dso_local global i32 0, align 4
@UDC_CHN_HI = common dso_local global i32 0, align 4
@UDC_CHN_LO = common dso_local global i32 0, align 4
@UDC_MODE = common dso_local global i32 0, align 4
@UDC_INT_ENABLE = common dso_local global i32 0, align 4
@dmabuf = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i32)* @sun3scsi_dma_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sun3scsi_dma_setup(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** @sun3_dma_orig_addr, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i32*, i32** @sun3_dma_orig_addr, align 8
  %12 = call i32 @dvma_unmap(i32* %11)
  br label %13

13:                                               ; preds = %10, %3
  %14 = load i8*, i8** %4, align 8
  %15 = ptrtoint i8* %14 to i64
  %16 = load i64, i64* %5, align 8
  %17 = call i64 @dvma_map(i64 %15, i64 %16)
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** %7, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** @sun3_dma_orig_addr, align 8
  %21 = load i64, i64* %5, align 8
  store i64 %21, i64* @sun3_dma_orig_count, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dregs, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* @UDC_RESET, align 4
  %25 = load i32, i32* @UDC_CSR, align 4
  %26 = call i32 @sun3_udc_write(i32 %24, i32 %25)
  %27 = load i32, i32* @CSR_FIFO, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dregs, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 8
  %33 = load i32, i32* @CSR_FIFO, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dregs, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %13
  %41 = load i32, i32* @CSR_SEND, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dregs, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  br label %53

46:                                               ; preds = %13
  %47 = load i32, i32* @CSR_SEND, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dregs, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %46, %40
  %54 = load i64, i64* %5, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dregs, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load i32, i32* @UDC_RESET, align 4
  %58 = load i32, i32* @UDC_CSR, align 4
  %59 = call i32 @sun3_udc_write(i32 %57, i32 %58)
  %60 = load i32, i32* @CSR_FIFO, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dregs, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load i32, i32* @CSR_FIFO, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dregs, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dregs, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %5, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %88

76:                                               ; preds = %53
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** @default_instance, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dregs, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %5, align 8
  %84 = trunc i64 %83 to i32
  %85 = call i32 @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %79, i64 %82, i32 %84)
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** @default_instance, align 8
  %87 = call i32 @NCR5380_print(%struct.TYPE_10__* %86)
  br label %88

88:                                               ; preds = %76, %53
  %89 = load i8*, i8** %7, align 8
  %90 = ptrtoint i8* %89 to i64
  %91 = and i64 %90, 16711680
  %92 = lshr i64 %91, 8
  %93 = trunc i64 %92 to i32
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** @udc_regs, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load i8*, i8** %7, align 8
  %97 = ptrtoint i8* %96 to i64
  %98 = and i64 %97, 65535
  %99 = trunc i64 %98 to i32
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** @udc_regs, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load i64, i64* %5, align 8
  %103 = udiv i64 %102, 2
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** @udc_regs, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 2
  store i64 %103, i64* %105, align 8
  %106 = load i32, i32* @UDC_MODE_HIWORD, align 4
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** @udc_regs, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 5
  store i32 %106, i32* %108, align 8
  %109 = load i32, i32* %6, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %127

111:                                              ; preds = %88
  %112 = load i64, i64* %5, align 8
  %113 = and i64 %112, 1
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %111
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** @udc_regs, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %117, align 8
  br label %120

120:                                              ; preds = %115, %111
  %121 = load i32, i32* @UDC_MODE_LSEND, align 4
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** @udc_regs, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 4
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* @UDC_RSEL_SEND, align 4
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** @udc_regs, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 8
  br label %134

127:                                              ; preds = %88
  %128 = load i32, i32* @UDC_MODE_LRECV, align 4
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** @udc_regs, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 4
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* @UDC_RSEL_RECV, align 4
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** @udc_regs, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 3
  store i32 %131, i32* %133, align 8
  br label %134

134:                                              ; preds = %127, %120
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** @udc_regs, align 8
  %136 = call i32 @dvma_vtob(%struct.TYPE_8__* %135)
  %137 = and i32 %136, 16711680
  %138 = ashr i32 %137, 8
  %139 = load i32, i32* @UDC_CHN_HI, align 4
  %140 = call i32 @sun3_udc_write(i32 %138, i32 %139)
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** @udc_regs, align 8
  %142 = call i32 @dvma_vtob(%struct.TYPE_8__* %141)
  %143 = and i32 %142, 65535
  %144 = load i32, i32* @UDC_CHN_LO, align 4
  %145 = call i32 @sun3_udc_write(i32 %143, i32 %144)
  %146 = load i32, i32* @UDC_MODE, align 4
  %147 = call i32 @sun3_udc_write(i32 13, i32 %146)
  %148 = load i32, i32* @UDC_INT_ENABLE, align 4
  %149 = load i32, i32* @UDC_CSR, align 4
  %150 = call i32 @sun3_udc_write(i32 %148, i32 %149)
  %151 = load i64, i64* %5, align 8
  ret i64 %151
}

declare dso_local i32 @dvma_unmap(i32*) #1

declare dso_local i64 @dvma_map(i64, i64) #1

declare dso_local i32 @sun3_udc_write(i32, i32) #1

declare dso_local i32 @printk(i8*, i32, i64, i32) #1

declare dso_local i32 @NCR5380_print(%struct.TYPE_10__*) #1

declare dso_local i32 @dvma_vtob(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
