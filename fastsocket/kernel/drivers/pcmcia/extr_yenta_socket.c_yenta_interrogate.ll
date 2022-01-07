; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_yenta_socket.c_yenta_interrogate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_yenta_socket.c_yenta_interrogate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.yenta_socket = type { i32 }

@CB_SOCKET_STATE = common dso_local global i32 0, align 4
@CB_5VCARD = common dso_local global i32 0, align 4
@CB_3VCARD = common dso_local global i32 0, align 4
@CB_XVCARD = common dso_local global i32 0, align 4
@CB_YVCARD = common dso_local global i32 0, align 4
@CB_CDETECT1 = common dso_local global i32 0, align 4
@CB_CDETECT2 = common dso_local global i32 0, align 4
@CB_NOTACARD = common dso_local global i32 0, align 4
@CB_BADVCCREQ = common dso_local global i32 0, align 4
@CB_16BITCARD = common dso_local global i32 0, align 4
@CB_CBCARD = common dso_local global i32 0, align 4
@CB_SOCKET_FORCE = common dso_local global i32 0, align 4
@CB_CVSTEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.yenta_socket*)* @yenta_interrogate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yenta_interrogate(%struct.yenta_socket* %0) #0 {
  %2 = alloca %struct.yenta_socket*, align 8
  %3 = alloca i32, align 4
  store %struct.yenta_socket* %0, %struct.yenta_socket** %2, align 8
  %4 = load %struct.yenta_socket*, %struct.yenta_socket** %2, align 8
  %5 = load i32, i32* @CB_SOCKET_STATE, align 4
  %6 = call i32 @cb_readl(%struct.yenta_socket* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @CB_5VCARD, align 4
  %9 = load i32, i32* @CB_3VCARD, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @CB_XVCARD, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @CB_YVCARD, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %7, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @CB_CDETECT1, align 4
  %20 = load i32, i32* @CB_CDETECT2, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @CB_NOTACARD, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @CB_BADVCCREQ, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %18, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %17
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @CB_16BITCARD, align 4
  %31 = load i32, i32* @CB_CBCARD, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  %34 = load i32, i32* @CB_16BITCARD, align 4
  %35 = load i32, i32* @CB_CBCARD, align 4
  %36 = or i32 %34, %35
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %28, %17, %1
  %39 = load %struct.yenta_socket*, %struct.yenta_socket** %2, align 8
  %40 = load i32, i32* @CB_SOCKET_FORCE, align 4
  %41 = load i32, i32* @CB_CVSTEST, align 4
  %42 = call i32 @cb_writel(%struct.yenta_socket* %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %38, %28
  ret void
}

declare dso_local i32 @cb_readl(%struct.yenta_socket*, i32) #1

declare dso_local i32 @cb_writel(%struct.yenta_socket*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
