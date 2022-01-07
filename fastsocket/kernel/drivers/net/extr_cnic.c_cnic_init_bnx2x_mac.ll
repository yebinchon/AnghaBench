; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_init_bnx2x_mac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_init_bnx2x_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32*, i32, %struct.cnic_local* }
%struct.cnic_local = type { i32 }
%struct.bnx2x = type { i32 }

@BAR_XSTRORM_INTMEM = common dso_local global i64 0, align 8
@BAR_TSTRORM_INTMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnic_dev*)* @cnic_init_bnx2x_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnic_init_bnx2x_mac(%struct.cnic_dev* %0) #0 {
  %2 = alloca %struct.cnic_dev*, align 8
  %3 = alloca %struct.cnic_local*, align 8
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.cnic_dev* %0, %struct.cnic_dev** %2, align 8
  %7 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %8 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %7, i32 0, i32 2
  %9 = load %struct.cnic_local*, %struct.cnic_local** %8, align 8
  store %struct.cnic_local* %9, %struct.cnic_local** %3, align 8
  %10 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %11 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.bnx2x* @netdev_priv(i32 %12)
  store %struct.bnx2x* %13, %struct.bnx2x** %4, align 8
  %14 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %15 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  %17 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %18 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %6, align 8
  %20 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %21 = load i64, i64* @BAR_XSTRORM_INTMEM, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @XSTORM_ISCSI_LOCAL_MAC_ADDR0_OFFSET(i32 %22)
  %24 = add nsw i64 %21, %23
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @CNIC_WR8(%struct.cnic_dev* %20, i64 %24, i32 %27)
  %29 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %30 = load i64, i64* @BAR_XSTRORM_INTMEM, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @XSTORM_ISCSI_LOCAL_MAC_ADDR1_OFFSET(i32 %31)
  %33 = add nsw i64 %30, %32
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @CNIC_WR8(%struct.cnic_dev* %29, i64 %33, i32 %36)
  %38 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %39 = load i64, i64* @BAR_XSTRORM_INTMEM, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i64 @XSTORM_ISCSI_LOCAL_MAC_ADDR2_OFFSET(i32 %40)
  %42 = add nsw i64 %39, %41
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @CNIC_WR8(%struct.cnic_dev* %38, i64 %42, i32 %45)
  %47 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %48 = load i64, i64* @BAR_XSTRORM_INTMEM, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i64 @XSTORM_ISCSI_LOCAL_MAC_ADDR3_OFFSET(i32 %49)
  %51 = add nsw i64 %48, %50
  %52 = load i32*, i32** %6, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @CNIC_WR8(%struct.cnic_dev* %47, i64 %51, i32 %54)
  %56 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %57 = load i64, i64* @BAR_XSTRORM_INTMEM, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i64 @XSTORM_ISCSI_LOCAL_MAC_ADDR4_OFFSET(i32 %58)
  %60 = add nsw i64 %57, %59
  %61 = load i32*, i32** %6, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 4
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @CNIC_WR8(%struct.cnic_dev* %56, i64 %60, i32 %63)
  %65 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %66 = load i64, i64* @BAR_XSTRORM_INTMEM, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i64 @XSTORM_ISCSI_LOCAL_MAC_ADDR5_OFFSET(i32 %67)
  %69 = add nsw i64 %66, %68
  %70 = load i32*, i32** %6, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 5
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @CNIC_WR8(%struct.cnic_dev* %65, i64 %69, i32 %72)
  %74 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %75 = load i64, i64* @BAR_TSTRORM_INTMEM, align 8
  %76 = load i32, i32* %5, align 4
  %77 = call i64 @TSTORM_ISCSI_TCP_VARS_LSB_LOCAL_MAC_ADDR_OFFSET(i32 %76)
  %78 = add nsw i64 %75, %77
  %79 = load i32*, i32** %6, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 5
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @CNIC_WR8(%struct.cnic_dev* %74, i64 %78, i32 %81)
  %83 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %84 = load i64, i64* @BAR_TSTRORM_INTMEM, align 8
  %85 = load i32, i32* %5, align 4
  %86 = call i64 @TSTORM_ISCSI_TCP_VARS_LSB_LOCAL_MAC_ADDR_OFFSET(i32 %85)
  %87 = add nsw i64 %84, %86
  %88 = add nsw i64 %87, 1
  %89 = load i32*, i32** %6, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 4
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @CNIC_WR8(%struct.cnic_dev* %83, i64 %88, i32 %91)
  %93 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %94 = load i64, i64* @BAR_TSTRORM_INTMEM, align 8
  %95 = load i32, i32* %5, align 4
  %96 = call i64 @TSTORM_ISCSI_TCP_VARS_MID_LOCAL_MAC_ADDR_OFFSET(i32 %95)
  %97 = add nsw i64 %94, %96
  %98 = load i32*, i32** %6, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 3
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @CNIC_WR8(%struct.cnic_dev* %93, i64 %97, i32 %100)
  %102 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %103 = load i64, i64* @BAR_TSTRORM_INTMEM, align 8
  %104 = load i32, i32* %5, align 4
  %105 = call i64 @TSTORM_ISCSI_TCP_VARS_MID_LOCAL_MAC_ADDR_OFFSET(i32 %104)
  %106 = add nsw i64 %103, %105
  %107 = add nsw i64 %106, 1
  %108 = load i32*, i32** %6, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 2
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @CNIC_WR8(%struct.cnic_dev* %102, i64 %107, i32 %110)
  %112 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %113 = load i64, i64* @BAR_TSTRORM_INTMEM, align 8
  %114 = load i32, i32* %5, align 4
  %115 = call i64 @TSTORM_ISCSI_TCP_VARS_MSB_LOCAL_MAC_ADDR_OFFSET(i32 %114)
  %116 = add nsw i64 %113, %115
  %117 = load i32*, i32** %6, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @CNIC_WR8(%struct.cnic_dev* %112, i64 %116, i32 %119)
  %121 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %122 = load i64, i64* @BAR_TSTRORM_INTMEM, align 8
  %123 = load i32, i32* %5, align 4
  %124 = call i64 @TSTORM_ISCSI_TCP_VARS_MSB_LOCAL_MAC_ADDR_OFFSET(i32 %123)
  %125 = add nsw i64 %122, %124
  %126 = add nsw i64 %125, 1
  %127 = load i32*, i32** %6, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @CNIC_WR8(%struct.cnic_dev* %121, i64 %126, i32 %129)
  ret void
}

declare dso_local %struct.bnx2x* @netdev_priv(i32) #1

declare dso_local i32 @CNIC_WR8(%struct.cnic_dev*, i64, i32) #1

declare dso_local i64 @XSTORM_ISCSI_LOCAL_MAC_ADDR0_OFFSET(i32) #1

declare dso_local i64 @XSTORM_ISCSI_LOCAL_MAC_ADDR1_OFFSET(i32) #1

declare dso_local i64 @XSTORM_ISCSI_LOCAL_MAC_ADDR2_OFFSET(i32) #1

declare dso_local i64 @XSTORM_ISCSI_LOCAL_MAC_ADDR3_OFFSET(i32) #1

declare dso_local i64 @XSTORM_ISCSI_LOCAL_MAC_ADDR4_OFFSET(i32) #1

declare dso_local i64 @XSTORM_ISCSI_LOCAL_MAC_ADDR5_OFFSET(i32) #1

declare dso_local i64 @TSTORM_ISCSI_TCP_VARS_LSB_LOCAL_MAC_ADDR_OFFSET(i32) #1

declare dso_local i64 @TSTORM_ISCSI_TCP_VARS_MID_LOCAL_MAC_ADDR_OFFSET(i32) #1

declare dso_local i64 @TSTORM_ISCSI_TCP_VARS_MSB_LOCAL_MAC_ADDR_OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
