; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_cs.c_if_cs_send_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_cs.c_if_cs_send_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i64 }
%struct.if_cs_card = type { i32 }

@LBS_DEB_CS = common dso_local global i32 0, align 4
@IF_CS_CARD_STATUS = common dso_local global i32 0, align 4
@IF_CS_BIT_TX = common dso_local global i32 0, align 4
@IF_CS_WRITE_LEN = common dso_local global i32 0, align 4
@IF_CS_WRITE = common dso_local global i32 0, align 4
@IF_CS_HOST_STATUS = common dso_local global i32 0, align 4
@IF_CS_HOST_INT_CAUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lbs_private*, i32*, i32)* @if_cs_send_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @if_cs_send_data(%struct.lbs_private* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.lbs_private*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.if_cs_card*, align 8
  %8 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %10 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.if_cs_card*
  store %struct.if_cs_card* %12, %struct.if_cs_card** %7, align 8
  %13 = load i32, i32* @LBS_DEB_CS, align 4
  %14 = call i32 @lbs_deb_enter(i32 %13)
  %15 = load %struct.if_cs_card*, %struct.if_cs_card** %7, align 8
  %16 = call i32 @if_cs_disable_ints(%struct.if_cs_card* %15)
  %17 = load %struct.if_cs_card*, %struct.if_cs_card** %7, align 8
  %18 = load i32, i32* @IF_CS_CARD_STATUS, align 4
  %19 = call i32 @if_cs_read16(%struct.if_cs_card* %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @IF_CS_BIT_TX, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load %struct.if_cs_card*, %struct.if_cs_card** %7, align 8
  %27 = load i32, i32* @IF_CS_WRITE_LEN, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @if_cs_write16(%struct.if_cs_card* %26, i32 %27, i32 %28)
  %30 = load %struct.if_cs_card*, %struct.if_cs_card** %7, align 8
  %31 = load i32, i32* @IF_CS_WRITE, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sdiv i32 %33, 2
  %35 = call i32 @if_cs_write16_rep(%struct.if_cs_card* %30, i32 %31, i32* %32, i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, 1
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %3
  %40 = load %struct.if_cs_card*, %struct.if_cs_card** %7, align 8
  %41 = load i32, i32* @IF_CS_WRITE, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @if_cs_write8(%struct.if_cs_card* %40, i32 %41, i32 %47)
  br label %49

49:                                               ; preds = %39, %3
  %50 = load %struct.if_cs_card*, %struct.if_cs_card** %7, align 8
  %51 = load i32, i32* @IF_CS_HOST_STATUS, align 4
  %52 = load i32, i32* @IF_CS_BIT_TX, align 4
  %53 = call i32 @if_cs_write16(%struct.if_cs_card* %50, i32 %51, i32 %52)
  %54 = load %struct.if_cs_card*, %struct.if_cs_card** %7, align 8
  %55 = load i32, i32* @IF_CS_HOST_INT_CAUSE, align 4
  %56 = load i32, i32* @IF_CS_BIT_TX, align 4
  %57 = call i32 @if_cs_write16(%struct.if_cs_card* %54, i32 %55, i32 %56)
  %58 = load %struct.if_cs_card*, %struct.if_cs_card** %7, align 8
  %59 = call i32 @if_cs_enable_ints(%struct.if_cs_card* %58)
  %60 = load i32, i32* @LBS_DEB_CS, align 4
  %61 = call i32 @lbs_deb_leave(i32 %60)
  ret void
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @if_cs_disable_ints(%struct.if_cs_card*) #1

declare dso_local i32 @if_cs_read16(%struct.if_cs_card*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @if_cs_write16(%struct.if_cs_card*, i32, i32) #1

declare dso_local i32 @if_cs_write16_rep(%struct.if_cs_card*, i32, i32*, i32) #1

declare dso_local i32 @if_cs_write8(%struct.if_cs_card*, i32, i32) #1

declare dso_local i32 @if_cs_enable_ints(%struct.if_cs_card*) #1

declare dso_local i32 @lbs_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
