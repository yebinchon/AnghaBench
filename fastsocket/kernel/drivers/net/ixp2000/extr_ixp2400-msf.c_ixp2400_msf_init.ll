; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixp2000/extr_ixp2400-msf.c_ixp2400_msf_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixp2000/extr_ixp2400-msf.c_ixp2400_msf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixp2400_msf_parameters = type { i32, i32, i32*, i32, i32, i32* }

@IXP2000_RESET0 = common dso_local global i64 0, align 8
@IXP2000_MSF_RX_MPHY_POLL_LIMIT = common dso_local global i64 0, align 8
@IXP2000_MSF_RX_CONTROL = common dso_local global i64 0, align 8
@IXP2000_MSF_RX_UP_CONTROL_0 = common dso_local global i64 0, align 8
@IXP2000_MSF_TX_MPHY_POLL_LIMIT = common dso_local global i64 0, align 8
@IXP2000_MSF_TX_CONTROL = common dso_local global i64 0, align 8
@IXP2000_MSF_TX_UP_CONTROL_0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixp2400_msf_init(%struct.ixp2400_msf_parameters* %0) #0 {
  %2 = alloca %struct.ixp2400_msf_parameters*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ixp2400_msf_parameters* %0, %struct.ixp2400_msf_parameters** %2, align 8
  %5 = load %struct.ixp2400_msf_parameters*, %struct.ixp2400_msf_parameters** %2, align 8
  %6 = call i32 @ixp2400_pll_init(%struct.ixp2400_msf_parameters* %5)
  %7 = load i64, i64* @IXP2000_RESET0, align 8
  %8 = call i32 @ixp2000_reg_read(i64 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i64, i64* @IXP2000_RESET0, align 8
  %10 = load i32, i32* %3, align 4
  %11 = or i32 %10, 128
  %12 = call i32 @ixp2000_reg_write(i64 %9, i32 %11)
  %13 = load i64, i64* @IXP2000_RESET0, align 8
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, -129
  %16 = call i32 @ixp2000_reg_write(i64 %13, i32 %15)
  %17 = load i64, i64* @IXP2000_MSF_RX_MPHY_POLL_LIMIT, align 8
  %18 = load %struct.ixp2400_msf_parameters*, %struct.ixp2400_msf_parameters** %2, align 8
  %19 = getelementptr inbounds %struct.ixp2400_msf_parameters, %struct.ixp2400_msf_parameters* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %20, 1
  %22 = call i32 @ixp2000_reg_write(i64 %17, i32 %21)
  %23 = load i64, i64* @IXP2000_MSF_RX_CONTROL, align 8
  %24 = load %struct.ixp2400_msf_parameters*, %struct.ixp2400_msf_parameters** %2, align 8
  %25 = getelementptr inbounds %struct.ixp2400_msf_parameters, %struct.ixp2400_msf_parameters* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ixp2000_reg_write(i64 %23, i32 %26)
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %44, %1
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 4
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  %32 = load i64, i64* @IXP2000_MSF_RX_UP_CONTROL_0, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = load %struct.ixp2400_msf_parameters*, %struct.ixp2400_msf_parameters** %2, align 8
  %37 = getelementptr inbounds %struct.ixp2400_msf_parameters, %struct.ixp2400_msf_parameters* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ixp2000_reg_write(i64 %35, i32 %42)
  br label %44

44:                                               ; preds = %31
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %28

47:                                               ; preds = %28
  %48 = load %struct.ixp2400_msf_parameters*, %struct.ixp2400_msf_parameters** %2, align 8
  %49 = call i32 @ixp2400_msf_free_rbuf_entries(%struct.ixp2400_msf_parameters* %48)
  %50 = load %struct.ixp2400_msf_parameters*, %struct.ixp2400_msf_parameters** %2, align 8
  %51 = call i32 @ixp2400_msf_enable_rx(%struct.ixp2400_msf_parameters* %50)
  %52 = load i64, i64* @IXP2000_MSF_TX_MPHY_POLL_LIMIT, align 8
  %53 = load %struct.ixp2400_msf_parameters*, %struct.ixp2400_msf_parameters** %2, align 8
  %54 = getelementptr inbounds %struct.ixp2400_msf_parameters, %struct.ixp2400_msf_parameters* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = sub nsw i32 %55, 1
  %57 = call i32 @ixp2000_reg_write(i64 %52, i32 %56)
  %58 = load i64, i64* @IXP2000_MSF_TX_CONTROL, align 8
  %59 = load %struct.ixp2400_msf_parameters*, %struct.ixp2400_msf_parameters** %2, align 8
  %60 = getelementptr inbounds %struct.ixp2400_msf_parameters, %struct.ixp2400_msf_parameters* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ixp2000_reg_write(i64 %58, i32 %61)
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %79, %47
  %64 = load i32, i32* %4, align 4
  %65 = icmp slt i32 %64, 4
  br i1 %65, label %66, label %82

66:                                               ; preds = %63
  %67 = load i64, i64* @IXP2000_MSF_TX_UP_CONTROL_0, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %67, %69
  %71 = load %struct.ixp2400_msf_parameters*, %struct.ixp2400_msf_parameters** %2, align 8
  %72 = getelementptr inbounds %struct.ixp2400_msf_parameters, %struct.ixp2400_msf_parameters* %71, i32 0, i32 5
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @ixp2000_reg_write(i64 %70, i32 %77)
  br label %79

79:                                               ; preds = %66
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %4, align 4
  br label %63

82:                                               ; preds = %63
  %83 = load %struct.ixp2400_msf_parameters*, %struct.ixp2400_msf_parameters** %2, align 8
  %84 = call i32 @ixp2400_msf_enable_tx(%struct.ixp2400_msf_parameters* %83)
  ret void
}

declare dso_local i32 @ixp2400_pll_init(%struct.ixp2400_msf_parameters*) #1

declare dso_local i32 @ixp2000_reg_read(i64) #1

declare dso_local i32 @ixp2000_reg_write(i64, i32) #1

declare dso_local i32 @ixp2400_msf_free_rbuf_entries(%struct.ixp2400_msf_parameters*) #1

declare dso_local i32 @ixp2400_msf_enable_rx(%struct.ixp2400_msf_parameters*) #1

declare dso_local i32 @ixp2400_msf_enable_tx(%struct.ixp2400_msf_parameters*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
