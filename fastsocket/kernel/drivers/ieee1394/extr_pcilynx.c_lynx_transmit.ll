; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_pcilynx.c_lynx_transmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_pcilynx.c_lynx_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_host = type { %struct.ti_lynx* }
%struct.ti_lynx = type { i32, %struct.lynx_send_data, %struct.lynx_send_data }
%struct.lynx_send_data = type { i32, i32, i32 }
%struct.hpsb_packet = type { i32, i32, i64, i32, i32* }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"transmit packet data too big (%Zd)\00", align 1
@EOVERFLOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid packet type %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TCODE_WRITEQ = common dso_local global i64 0, align 8
@TCODE_READQ_RESPONSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpsb_host*, %struct.hpsb_packet*)* @lynx_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lynx_transmit(%struct.hpsb_host* %0, %struct.hpsb_packet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hpsb_host*, align 8
  %5 = alloca %struct.hpsb_packet*, align 8
  %6 = alloca %struct.ti_lynx*, align 8
  %7 = alloca %struct.lynx_send_data*, align 8
  %8 = alloca i64, align 8
  store %struct.hpsb_host* %0, %struct.hpsb_host** %4, align 8
  store %struct.hpsb_packet* %1, %struct.hpsb_packet** %5, align 8
  %9 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  %10 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %9, i32 0, i32 0
  %11 = load %struct.ti_lynx*, %struct.ti_lynx** %10, align 8
  store %struct.ti_lynx* %11, %struct.ti_lynx** %6, align 8
  %12 = load %struct.hpsb_packet*, %struct.hpsb_packet** %5, align 8
  %13 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sge i32 %14, 4096
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load i32, i32* @KERN_ERR, align 4
  %18 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %19 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.hpsb_packet*, %struct.hpsb_packet** %5, align 8
  %22 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @PRINT(i32 %17, i32 %20, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @EOVERFLOW, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %88

27:                                               ; preds = %2
  %28 = load %struct.hpsb_packet*, %struct.hpsb_packet** %5, align 8
  %29 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %34 [
    i32 130, label %31
    i32 128, label %31
  ]

31:                                               ; preds = %27, %27
  %32 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %33 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %32, i32 0, i32 2
  store %struct.lynx_send_data* %33, %struct.lynx_send_data** %7, align 8
  br label %45

34:                                               ; preds = %27
  %35 = load i32, i32* @KERN_ERR, align 4
  %36 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %37 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.hpsb_packet*, %struct.hpsb_packet** %5, align 8
  %40 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @PRINT(i32 %35, i32 %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %88

45:                                               ; preds = %31
  %46 = load %struct.hpsb_packet*, %struct.hpsb_packet** %5, align 8
  %47 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @TCODE_WRITEQ, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load %struct.hpsb_packet*, %struct.hpsb_packet** %5, align 8
  %53 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @TCODE_READQ_RESPONSE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %51, %45
  %58 = load %struct.hpsb_packet*, %struct.hpsb_packet** %5, align 8
  %59 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %58, i32 0, i32 4
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 3
  %62 = call i32 @cpu_to_be32s(i32* %61)
  br label %63

63:                                               ; preds = %57, %51
  %64 = load %struct.lynx_send_data*, %struct.lynx_send_data** %7, align 8
  %65 = getelementptr inbounds %struct.lynx_send_data, %struct.lynx_send_data* %64, i32 0, i32 0
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @spin_lock_irqsave(i32* %65, i64 %66)
  %68 = load %struct.hpsb_packet*, %struct.hpsb_packet** %5, align 8
  %69 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %68, i32 0, i32 3
  %70 = load %struct.lynx_send_data*, %struct.lynx_send_data** %7, align 8
  %71 = getelementptr inbounds %struct.lynx_send_data, %struct.lynx_send_data* %70, i32 0, i32 2
  %72 = call i32 @list_add_tail(i32* %69, i32* %71)
  %73 = load %struct.lynx_send_data*, %struct.lynx_send_data** %7, align 8
  %74 = getelementptr inbounds %struct.lynx_send_data, %struct.lynx_send_data* %73, i32 0, i32 1
  %75 = call i64 @list_empty(i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %63
  %78 = load %struct.ti_lynx*, %struct.ti_lynx** %6, align 8
  %79 = load %struct.hpsb_packet*, %struct.hpsb_packet** %5, align 8
  %80 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @send_next(%struct.ti_lynx* %78, i32 %81)
  br label %83

83:                                               ; preds = %77, %63
  %84 = load %struct.lynx_send_data*, %struct.lynx_send_data** %7, align 8
  %85 = getelementptr inbounds %struct.lynx_send_data, %struct.lynx_send_data* %84, i32 0, i32 0
  %86 = load i64, i64* %8, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32* %85, i64 %86)
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %83, %34, %16
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @PRINT(i32, i32, i8*, i32) #1

declare dso_local i32 @cpu_to_be32s(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @send_next(%struct.ti_lynx*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
