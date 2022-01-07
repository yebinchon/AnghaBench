; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_port.c_bfa_port_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_port.c_bfa_port_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfi_mbmsg_s = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.bfa_port_s = type { i32, i32 }
%union.bfi_port_i2h_msg_u = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@BFA_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.bfi_mbmsg_s*)* @bfa_port_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_port_isr(i8* %0, %struct.bfi_mbmsg_s* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.bfi_mbmsg_s*, align 8
  %5 = alloca %struct.bfa_port_s*, align 8
  %6 = alloca %union.bfi_port_i2h_msg_u*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.bfi_mbmsg_s* %1, %struct.bfi_mbmsg_s** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.bfa_port_s*
  store %struct.bfa_port_s* %8, %struct.bfa_port_s** %5, align 8
  %9 = load %struct.bfi_mbmsg_s*, %struct.bfi_mbmsg_s** %4, align 8
  %10 = bitcast %struct.bfi_mbmsg_s* %9 to %union.bfi_port_i2h_msg_u*
  store %union.bfi_port_i2h_msg_u* %10, %union.bfi_port_i2h_msg_u** %6, align 8
  %11 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %12 = load %struct.bfi_mbmsg_s*, %struct.bfi_mbmsg_s** %4, align 8
  %13 = getelementptr inbounds %struct.bfi_mbmsg_s, %struct.bfi_mbmsg_s* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @bfa_trc(%struct.bfa_port_s* %11, i32 %15)
  %17 = load %struct.bfi_mbmsg_s*, %struct.bfi_mbmsg_s** %4, align 8
  %18 = getelementptr inbounds %struct.bfi_mbmsg_s, %struct.bfi_mbmsg_s* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %77 [
    i32 129, label %21
    i32 130, label %35
    i32 128, label %49
    i32 131, label %63
  ]

21:                                               ; preds = %2
  %22 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %23 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @BFA_FALSE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %79

28:                                               ; preds = %21
  %29 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %30 = load %union.bfi_port_i2h_msg_u*, %union.bfi_port_i2h_msg_u** %6, align 8
  %31 = bitcast %union.bfi_port_i2h_msg_u* %30 to %struct.TYPE_7__*
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @bfa_port_enable_isr(%struct.bfa_port_s* %29, i32 %33)
  br label %79

35:                                               ; preds = %2
  %36 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %37 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @BFA_FALSE, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %79

42:                                               ; preds = %35
  %43 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %44 = load %union.bfi_port_i2h_msg_u*, %union.bfi_port_i2h_msg_u** %6, align 8
  %45 = bitcast %union.bfi_port_i2h_msg_u* %44 to %struct.TYPE_8__*
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @bfa_port_disable_isr(%struct.bfa_port_s* %43, i32 %47)
  br label %79

49:                                               ; preds = %2
  %50 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %51 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @BFA_FALSE, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %79

56:                                               ; preds = %49
  %57 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %58 = load %union.bfi_port_i2h_msg_u*, %union.bfi_port_i2h_msg_u** %6, align 8
  %59 = bitcast %union.bfi_port_i2h_msg_u* %58 to %struct.TYPE_9__*
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @bfa_port_get_stats_isr(%struct.bfa_port_s* %57, i32 %61)
  br label %79

63:                                               ; preds = %2
  %64 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %65 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @BFA_FALSE, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %79

70:                                               ; preds = %63
  %71 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %72 = load %union.bfi_port_i2h_msg_u*, %union.bfi_port_i2h_msg_u** %6, align 8
  %73 = bitcast %union.bfi_port_i2h_msg_u* %72 to %struct.TYPE_10__*
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @bfa_port_clear_stats_isr(%struct.bfa_port_s* %71, i32 %75)
  br label %79

77:                                               ; preds = %2
  %78 = call i32 @WARN_ON(i32 1)
  br label %79

79:                                               ; preds = %77, %70, %69, %56, %55, %42, %41, %28, %27
  ret void
}

declare dso_local i32 @bfa_trc(%struct.bfa_port_s*, i32) #1

declare dso_local i32 @bfa_port_enable_isr(%struct.bfa_port_s*, i32) #1

declare dso_local i32 @bfa_port_disable_isr(%struct.bfa_port_s*, i32) #1

declare dso_local i32 @bfa_port_get_stats_isr(%struct.bfa_port_s*, i32) #1

declare dso_local i32 @bfa_port_clear_stats_isr(%struct.bfa_port_s*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
