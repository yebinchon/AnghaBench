; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_claw.c_claw_snd_conn_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_claw.c_claw_snd_conn_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.claw_privbk* }
%struct.claw_privbk = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.clawctl = type { i32 }

@setup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"snd_conn\00", align 1
@PACKING_ASK = common dso_local global i64 0, align 8
@CONNECTION_REQUEST = common dso_local global i32 0, align 4
@WS_APPL_NAME_PACKED = common dso_local global i32 0, align 4
@PACK_SEND = common dso_local global i64 0, align 8
@WS_APPL_NAME_IP_NAME = common dso_local global i32 0, align 4
@HOST_APPL_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @claw_snd_conn_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @claw_snd_conn_req(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.claw_privbk*, align 8
  %8 = alloca %struct.clawctl*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load %struct.claw_privbk*, %struct.claw_privbk** %10, align 8
  store %struct.claw_privbk* %11, %struct.claw_privbk** %7, align 8
  %12 = load i32, i32* @setup, align 4
  %13 = call i32 @CLAW_DBF_TEXT(i32 2, i32 %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  %14 = load %struct.claw_privbk*, %struct.claw_privbk** %7, align 8
  %15 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %14, i32 0, i32 2
  %16 = bitcast i32* %15 to %struct.clawctl*
  store %struct.clawctl* %16, %struct.clawctl** %8, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.clawctl*, %struct.clawctl** %8, align 8
  %19 = getelementptr inbounds %struct.clawctl, %struct.clawctl* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.claw_privbk*, %struct.claw_privbk** %7, align 8
  %21 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %73

26:                                               ; preds = %2
  %27 = load %struct.claw_privbk*, %struct.claw_privbk** %7, align 8
  %28 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PACKING_ASK, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %26
  %35 = load %struct.net_device*, %struct.net_device** %4, align 8
  %36 = load i32, i32* @CONNECTION_REQUEST, align 4
  %37 = load i32, i32* @WS_APPL_NAME_PACKED, align 4
  %38 = load i32, i32* @WS_APPL_NAME_PACKED, align 4
  %39 = call i32 @claw_send_control(%struct.net_device* %35, i32 %36, i32 0, i32 0, i32 0, i32 %37, i32 %38)
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %34, %26
  %41 = load %struct.claw_privbk*, %struct.claw_privbk** %7, align 8
  %42 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @PACK_SEND, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %40
  %49 = load %struct.net_device*, %struct.net_device** %4, align 8
  %50 = load i32, i32* @CONNECTION_REQUEST, align 4
  %51 = load i32, i32* @WS_APPL_NAME_IP_NAME, align 4
  %52 = load i32, i32* @WS_APPL_NAME_IP_NAME, align 4
  %53 = call i32 @claw_send_control(%struct.net_device* %49, i32 %50, i32 0, i32 0, i32 0, i32 %51, i32 %52)
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %48, %40
  %55 = load %struct.claw_privbk*, %struct.claw_privbk** %7, align 8
  %56 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %54
  %62 = load %struct.net_device*, %struct.net_device** %4, align 8
  %63 = load i32, i32* @CONNECTION_REQUEST, align 4
  %64 = load i32, i32* @HOST_APPL_NAME, align 4
  %65 = load %struct.claw_privbk*, %struct.claw_privbk** %7, align 8
  %66 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @claw_send_control(%struct.net_device* %62, i32 %63, i32 0, i32 0, i32 0, i32 %64, i32 %69)
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %61, %54
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %71, %24
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @CLAW_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @claw_send_control(%struct.net_device*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
