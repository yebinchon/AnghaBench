; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ablk_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ablk_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfi_mbmsg_s = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.bfa_ablk_s = type { i32, i32 (i32, i32)*, i32, i32*, %struct.TYPE_6__*, i32*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.bfi_ablk_i2h_rsp_s = type { i32, i32, i32 }

@BFI_MC_ABLK = common dso_local global i64 0, align 8
@BFA_STATUS_OK = common dso_local global i32 0, align 4
@BFA_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.bfi_mbmsg_s*)* @bfa_ablk_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_ablk_isr(i8* %0, %struct.bfi_mbmsg_s* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.bfi_mbmsg_s*, align 8
  %5 = alloca %struct.bfa_ablk_s*, align 8
  %6 = alloca %struct.bfi_ablk_i2h_rsp_s*, align 8
  %7 = alloca i32 (i32, i32)*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.bfi_mbmsg_s* %1, %struct.bfi_mbmsg_s** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.bfa_ablk_s*
  store %struct.bfa_ablk_s* %9, %struct.bfa_ablk_s** %5, align 8
  %10 = load %struct.bfi_mbmsg_s*, %struct.bfi_mbmsg_s** %4, align 8
  %11 = bitcast %struct.bfi_mbmsg_s* %10 to %struct.bfi_ablk_i2h_rsp_s*
  store %struct.bfi_ablk_i2h_rsp_s* %11, %struct.bfi_ablk_i2h_rsp_s** %6, align 8
  %12 = load %struct.bfi_mbmsg_s*, %struct.bfi_mbmsg_s** %4, align 8
  %13 = getelementptr inbounds %struct.bfi_mbmsg_s, %struct.bfi_mbmsg_s* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @BFI_MC_ABLK, align 8
  %17 = icmp ne i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON(i32 %18)
  %20 = load %struct.bfa_ablk_s*, %struct.bfa_ablk_s** %5, align 8
  %21 = getelementptr inbounds %struct.bfa_ablk_s, %struct.bfa_ablk_s* %20, i32 0, i32 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = load %struct.bfi_mbmsg_s*, %struct.bfi_mbmsg_s** %4, align 8
  %24 = getelementptr inbounds %struct.bfi_mbmsg_s, %struct.bfi_mbmsg_s* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @bfa_trc(%struct.TYPE_6__* %22, i32 %26)
  %28 = load %struct.bfi_mbmsg_s*, %struct.bfi_mbmsg_s** %4, align 8
  %29 = getelementptr inbounds %struct.bfi_mbmsg_s, %struct.bfi_mbmsg_s* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %72 [
    i32 128, label %32
    i32 135, label %54
    i32 129, label %54
    i32 131, label %62
    i32 130, label %62
    i32 133, label %62
    i32 134, label %62
    i32 132, label %63
  ]

32:                                               ; preds = %2
  %33 = load %struct.bfi_ablk_i2h_rsp_s*, %struct.bfi_ablk_i2h_rsp_s** %6, align 8
  %34 = getelementptr inbounds %struct.bfi_ablk_i2h_rsp_s, %struct.bfi_ablk_i2h_rsp_s* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @BFA_STATUS_OK, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %32
  %39 = load %struct.bfa_ablk_s*, %struct.bfa_ablk_s** %5, align 8
  %40 = getelementptr inbounds %struct.bfa_ablk_s, %struct.bfa_ablk_s* %39, i32 0, i32 5
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.bfa_ablk_s*, %struct.bfa_ablk_s** %5, align 8
  %43 = getelementptr inbounds %struct.bfa_ablk_s, %struct.bfa_ablk_s* %42, i32 0, i32 6
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @memcpy(i32* %41, i32 %45, i32 4)
  %47 = load %struct.bfa_ablk_s*, %struct.bfa_ablk_s** %5, align 8
  %48 = getelementptr inbounds %struct.bfa_ablk_s, %struct.bfa_ablk_s* %47, i32 0, i32 5
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @bfa_ablk_config_swap(i32* %49)
  %51 = load %struct.bfa_ablk_s*, %struct.bfa_ablk_s** %5, align 8
  %52 = getelementptr inbounds %struct.bfa_ablk_s, %struct.bfa_ablk_s* %51, i32 0, i32 5
  store i32* null, i32** %52, align 8
  br label %53

53:                                               ; preds = %38, %32
  br label %74

54:                                               ; preds = %2, %2
  %55 = load %struct.bfi_ablk_i2h_rsp_s*, %struct.bfi_ablk_i2h_rsp_s** %6, align 8
  %56 = getelementptr inbounds %struct.bfi_ablk_i2h_rsp_s, %struct.bfi_ablk_i2h_rsp_s* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.bfa_ablk_s*, %struct.bfa_ablk_s** %5, align 8
  %59 = getelementptr inbounds %struct.bfa_ablk_s, %struct.bfa_ablk_s* %58, i32 0, i32 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store i32 %57, i32* %61, align 4
  br label %62

62:                                               ; preds = %2, %2, %2, %2, %54
  br label %74

63:                                               ; preds = %2
  %64 = load %struct.bfi_ablk_i2h_rsp_s*, %struct.bfi_ablk_i2h_rsp_s** %6, align 8
  %65 = getelementptr inbounds %struct.bfi_ablk_i2h_rsp_s, %struct.bfi_ablk_i2h_rsp_s* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.bfa_ablk_s*, %struct.bfa_ablk_s** %5, align 8
  %68 = getelementptr inbounds %struct.bfa_ablk_s, %struct.bfa_ablk_s* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  store i32 %66, i32* %69, align 4
  %70 = load %struct.bfa_ablk_s*, %struct.bfa_ablk_s** %5, align 8
  %71 = getelementptr inbounds %struct.bfa_ablk_s, %struct.bfa_ablk_s* %70, i32 0, i32 3
  store i32* null, i32** %71, align 8
  br label %74

72:                                               ; preds = %2
  %73 = call i32 @WARN_ON(i32 1)
  br label %74

74:                                               ; preds = %72, %63, %62, %53
  %75 = load i32, i32* @BFA_FALSE, align 4
  %76 = load %struct.bfa_ablk_s*, %struct.bfa_ablk_s** %5, align 8
  %77 = getelementptr inbounds %struct.bfa_ablk_s, %struct.bfa_ablk_s* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load %struct.bfa_ablk_s*, %struct.bfa_ablk_s** %5, align 8
  %79 = getelementptr inbounds %struct.bfa_ablk_s, %struct.bfa_ablk_s* %78, i32 0, i32 1
  %80 = load i32 (i32, i32)*, i32 (i32, i32)** %79, align 8
  %81 = icmp ne i32 (i32, i32)* %80, null
  br i1 %81, label %82, label %96

82:                                               ; preds = %74
  %83 = load %struct.bfa_ablk_s*, %struct.bfa_ablk_s** %5, align 8
  %84 = getelementptr inbounds %struct.bfa_ablk_s, %struct.bfa_ablk_s* %83, i32 0, i32 1
  %85 = load i32 (i32, i32)*, i32 (i32, i32)** %84, align 8
  store i32 (i32, i32)* %85, i32 (i32, i32)** %7, align 8
  %86 = load %struct.bfa_ablk_s*, %struct.bfa_ablk_s** %5, align 8
  %87 = getelementptr inbounds %struct.bfa_ablk_s, %struct.bfa_ablk_s* %86, i32 0, i32 1
  store i32 (i32, i32)* null, i32 (i32, i32)** %87, align 8
  %88 = load i32 (i32, i32)*, i32 (i32, i32)** %7, align 8
  %89 = load %struct.bfa_ablk_s*, %struct.bfa_ablk_s** %5, align 8
  %90 = getelementptr inbounds %struct.bfa_ablk_s, %struct.bfa_ablk_s* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.bfi_ablk_i2h_rsp_s*, %struct.bfi_ablk_i2h_rsp_s** %6, align 8
  %93 = getelementptr inbounds %struct.bfi_ablk_i2h_rsp_s, %struct.bfi_ablk_i2h_rsp_s* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 %88(i32 %91, i32 %94)
  br label %96

96:                                               ; preds = %82, %74
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @bfa_trc(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @bfa_ablk_config_swap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
