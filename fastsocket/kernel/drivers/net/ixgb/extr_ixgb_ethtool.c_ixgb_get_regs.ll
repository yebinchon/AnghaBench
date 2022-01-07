; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgb/extr_ixgb_ethtool.c_ixgb_get_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgb/extr_ixgb_ethtool.c_ixgb_get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_regs = type { i32, i32 }
%struct.ixgb_adapter = type { %struct.ixgb_hw }
%struct.ixgb_hw = type { i32, i32 }

@CTRL0 = common dso_local global i32 0, align 4
@CTRL1 = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@EECD = common dso_local global i32 0, align 4
@MFS = common dso_local global i32 0, align 4
@ICR = common dso_local global i32 0, align 4
@ICS = common dso_local global i32 0, align 4
@IMS = common dso_local global i32 0, align 4
@IMC = common dso_local global i32 0, align 4
@RCTL = common dso_local global i32 0, align 4
@FCRTL = common dso_local global i32 0, align 4
@FCRTH = common dso_local global i32 0, align 4
@RDBAL = common dso_local global i32 0, align 4
@RDBAH = common dso_local global i32 0, align 4
@RDLEN = common dso_local global i32 0, align 4
@RDH = common dso_local global i32 0, align 4
@RDT = common dso_local global i32 0, align 4
@RDTR = common dso_local global i32 0, align 4
@RXDCTL = common dso_local global i32 0, align 4
@RAIDC = common dso_local global i32 0, align 4
@RXCSUM = common dso_local global i32 0, align 4
@IXGB_ALL_RAR_ENTRIES = common dso_local global i32 0, align 4
@RAL = common dso_local global i32 0, align 4
@RAH = common dso_local global i32 0, align 4
@TCTL = common dso_local global i32 0, align 4
@TDBAL = common dso_local global i32 0, align 4
@TDBAH = common dso_local global i32 0, align 4
@TDLEN = common dso_local global i32 0, align 4
@TDH = common dso_local global i32 0, align 4
@TDT = common dso_local global i32 0, align 4
@TIDV = common dso_local global i32 0, align 4
@TXDCTL = common dso_local global i32 0, align 4
@TSPMT = common dso_local global i32 0, align 4
@PAP = common dso_local global i32 0, align 4
@PCSC1 = common dso_local global i32 0, align 4
@PCSC2 = common dso_local global i32 0, align 4
@PCSS1 = common dso_local global i32 0, align 4
@PCSS2 = common dso_local global i32 0, align 4
@XPCSS = common dso_local global i32 0, align 4
@UCCR = common dso_local global i32 0, align 4
@XPCSTC = common dso_local global i32 0, align 4
@MACA = common dso_local global i32 0, align 4
@APAE = common dso_local global i32 0, align 4
@ARD = common dso_local global i32 0, align 4
@AIS = common dso_local global i32 0, align 4
@MSCA = common dso_local global i32 0, align 4
@MSRWD = common dso_local global i32 0, align 4
@tprl = common dso_local global i32 0, align 4
@tprh = common dso_local global i32 0, align 4
@gprcl = common dso_local global i32 0, align 4
@gprch = common dso_local global i32 0, align 4
@bprcl = common dso_local global i32 0, align 4
@bprch = common dso_local global i32 0, align 4
@mprcl = common dso_local global i32 0, align 4
@mprch = common dso_local global i32 0, align 4
@uprcl = common dso_local global i32 0, align 4
@uprch = common dso_local global i32 0, align 4
@vprcl = common dso_local global i32 0, align 4
@vprch = common dso_local global i32 0, align 4
@jprcl = common dso_local global i32 0, align 4
@jprch = common dso_local global i32 0, align 4
@gorcl = common dso_local global i32 0, align 4
@gorch = common dso_local global i32 0, align 4
@torl = common dso_local global i32 0, align 4
@torh = common dso_local global i32 0, align 4
@rnbc = common dso_local global i32 0, align 4
@ruc = common dso_local global i32 0, align 4
@roc = common dso_local global i32 0, align 4
@rlec = common dso_local global i32 0, align 4
@crcerrs = common dso_local global i32 0, align 4
@icbc = common dso_local global i32 0, align 4
@ecbc = common dso_local global i32 0, align 4
@mpc = common dso_local global i32 0, align 4
@tptl = common dso_local global i32 0, align 4
@tpth = common dso_local global i32 0, align 4
@gptcl = common dso_local global i32 0, align 4
@gptch = common dso_local global i32 0, align 4
@bptcl = common dso_local global i32 0, align 4
@bptch = common dso_local global i32 0, align 4
@mptcl = common dso_local global i32 0, align 4
@mptch = common dso_local global i32 0, align 4
@uptcl = common dso_local global i32 0, align 4
@uptch = common dso_local global i32 0, align 4
@vptcl = common dso_local global i32 0, align 4
@vptch = common dso_local global i32 0, align 4
@jptcl = common dso_local global i32 0, align 4
@jptch = common dso_local global i32 0, align 4
@gotcl = common dso_local global i32 0, align 4
@gotch = common dso_local global i32 0, align 4
@totl = common dso_local global i32 0, align 4
@toth = common dso_local global i32 0, align 4
@dc = common dso_local global i32 0, align 4
@plt64c = common dso_local global i32 0, align 4
@tsctc = common dso_local global i32 0, align 4
@tsctfc = common dso_local global i32 0, align 4
@ibic = common dso_local global i32 0, align 4
@rfc = common dso_local global i32 0, align 4
@lfc = common dso_local global i32 0, align 4
@pfrc = common dso_local global i32 0, align 4
@pftc = common dso_local global i32 0, align 4
@mcfrc = common dso_local global i32 0, align 4
@mcftc = common dso_local global i32 0, align 4
@xonrxc = common dso_local global i32 0, align 4
@xontxc = common dso_local global i32 0, align 4
@xoffrxc = common dso_local global i32 0, align 4
@xofftxc = common dso_local global i32 0, align 4
@rjc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_regs*, i8*)* @ixgb_get_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgb_get_regs(%struct.net_device* %0, %struct.ethtool_regs* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_regs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ixgb_adapter*, align 8
  %8 = alloca %struct.ixgb_hw*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_regs* %1, %struct.ethtool_regs** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.ixgb_adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.ixgb_adapter* %13, %struct.ixgb_adapter** %7, align 8
  %14 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %15 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %14, i32 0, i32 0
  store %struct.ixgb_hw* %15, %struct.ixgb_hw** %8, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %9, align 8
  %18 = load i32*, i32** %9, align 8
  store i32* %18, i32** %10, align 8
  %19 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %20 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 16
  %23 = or i32 16777216, %22
  %24 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %25 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %23, %26
  %28 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %29 = getelementptr inbounds %struct.ethtool_regs, %struct.ethtool_regs* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %31 = load i32, i32* @CTRL0, align 4
  %32 = call i8* @IXGB_READ_REG(%struct.ixgb_hw* %30, i32 %31)
  %33 = ptrtoint i8* %32 to i32
  %34 = load i32*, i32** %9, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %9, align 8
  store i32 %33, i32* %34, align 4
  %36 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %37 = load i32, i32* @CTRL1, align 4
  %38 = call i8* @IXGB_READ_REG(%struct.ixgb_hw* %36, i32 %37)
  %39 = ptrtoint i8* %38 to i32
  %40 = load i32*, i32** %9, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %9, align 8
  store i32 %39, i32* %40, align 4
  %42 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %43 = load i32, i32* @STATUS, align 4
  %44 = call i8* @IXGB_READ_REG(%struct.ixgb_hw* %42, i32 %43)
  %45 = ptrtoint i8* %44 to i32
  %46 = load i32*, i32** %9, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %9, align 8
  store i32 %45, i32* %46, align 4
  %48 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %49 = load i32, i32* @EECD, align 4
  %50 = call i8* @IXGB_READ_REG(%struct.ixgb_hw* %48, i32 %49)
  %51 = ptrtoint i8* %50 to i32
  %52 = load i32*, i32** %9, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %9, align 8
  store i32 %51, i32* %52, align 4
  %54 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %55 = load i32, i32* @MFS, align 4
  %56 = call i8* @IXGB_READ_REG(%struct.ixgb_hw* %54, i32 %55)
  %57 = ptrtoint i8* %56 to i32
  %58 = load i32*, i32** %9, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %9, align 8
  store i32 %57, i32* %58, align 4
  %60 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %61 = load i32, i32* @ICR, align 4
  %62 = call i8* @IXGB_READ_REG(%struct.ixgb_hw* %60, i32 %61)
  %63 = ptrtoint i8* %62 to i32
  %64 = load i32*, i32** %9, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %9, align 8
  store i32 %63, i32* %64, align 4
  %66 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %67 = load i32, i32* @ICS, align 4
  %68 = call i8* @IXGB_READ_REG(%struct.ixgb_hw* %66, i32 %67)
  %69 = ptrtoint i8* %68 to i32
  %70 = load i32*, i32** %9, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %9, align 8
  store i32 %69, i32* %70, align 4
  %72 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %73 = load i32, i32* @IMS, align 4
  %74 = call i8* @IXGB_READ_REG(%struct.ixgb_hw* %72, i32 %73)
  %75 = ptrtoint i8* %74 to i32
  %76 = load i32*, i32** %9, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %9, align 8
  store i32 %75, i32* %76, align 4
  %78 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %79 = load i32, i32* @IMC, align 4
  %80 = call i8* @IXGB_READ_REG(%struct.ixgb_hw* %78, i32 %79)
  %81 = ptrtoint i8* %80 to i32
  %82 = load i32*, i32** %9, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %9, align 8
  store i32 %81, i32* %82, align 4
  %84 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %85 = load i32, i32* @RCTL, align 4
  %86 = call i8* @IXGB_READ_REG(%struct.ixgb_hw* %84, i32 %85)
  %87 = ptrtoint i8* %86 to i32
  %88 = load i32*, i32** %9, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %9, align 8
  store i32 %87, i32* %88, align 4
  %90 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %91 = load i32, i32* @FCRTL, align 4
  %92 = call i8* @IXGB_READ_REG(%struct.ixgb_hw* %90, i32 %91)
  %93 = ptrtoint i8* %92 to i32
  %94 = load i32*, i32** %9, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %9, align 8
  store i32 %93, i32* %94, align 4
  %96 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %97 = load i32, i32* @FCRTH, align 4
  %98 = call i8* @IXGB_READ_REG(%struct.ixgb_hw* %96, i32 %97)
  %99 = ptrtoint i8* %98 to i32
  %100 = load i32*, i32** %9, align 8
  %101 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %101, i32** %9, align 8
  store i32 %99, i32* %100, align 4
  %102 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %103 = load i32, i32* @RDBAL, align 4
  %104 = call i8* @IXGB_READ_REG(%struct.ixgb_hw* %102, i32 %103)
  %105 = ptrtoint i8* %104 to i32
  %106 = load i32*, i32** %9, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 1
  store i32* %107, i32** %9, align 8
  store i32 %105, i32* %106, align 4
  %108 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %109 = load i32, i32* @RDBAH, align 4
  %110 = call i8* @IXGB_READ_REG(%struct.ixgb_hw* %108, i32 %109)
  %111 = ptrtoint i8* %110 to i32
  %112 = load i32*, i32** %9, align 8
  %113 = getelementptr inbounds i32, i32* %112, i32 1
  store i32* %113, i32** %9, align 8
  store i32 %111, i32* %112, align 4
  %114 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %115 = load i32, i32* @RDLEN, align 4
  %116 = call i8* @IXGB_READ_REG(%struct.ixgb_hw* %114, i32 %115)
  %117 = ptrtoint i8* %116 to i32
  %118 = load i32*, i32** %9, align 8
  %119 = getelementptr inbounds i32, i32* %118, i32 1
  store i32* %119, i32** %9, align 8
  store i32 %117, i32* %118, align 4
  %120 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %121 = load i32, i32* @RDH, align 4
  %122 = call i8* @IXGB_READ_REG(%struct.ixgb_hw* %120, i32 %121)
  %123 = ptrtoint i8* %122 to i32
  %124 = load i32*, i32** %9, align 8
  %125 = getelementptr inbounds i32, i32* %124, i32 1
  store i32* %125, i32** %9, align 8
  store i32 %123, i32* %124, align 4
  %126 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %127 = load i32, i32* @RDT, align 4
  %128 = call i8* @IXGB_READ_REG(%struct.ixgb_hw* %126, i32 %127)
  %129 = ptrtoint i8* %128 to i32
  %130 = load i32*, i32** %9, align 8
  %131 = getelementptr inbounds i32, i32* %130, i32 1
  store i32* %131, i32** %9, align 8
  store i32 %129, i32* %130, align 4
  %132 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %133 = load i32, i32* @RDTR, align 4
  %134 = call i8* @IXGB_READ_REG(%struct.ixgb_hw* %132, i32 %133)
  %135 = ptrtoint i8* %134 to i32
  %136 = load i32*, i32** %9, align 8
  %137 = getelementptr inbounds i32, i32* %136, i32 1
  store i32* %137, i32** %9, align 8
  store i32 %135, i32* %136, align 4
  %138 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %139 = load i32, i32* @RXDCTL, align 4
  %140 = call i8* @IXGB_READ_REG(%struct.ixgb_hw* %138, i32 %139)
  %141 = ptrtoint i8* %140 to i32
  %142 = load i32*, i32** %9, align 8
  %143 = getelementptr inbounds i32, i32* %142, i32 1
  store i32* %143, i32** %9, align 8
  store i32 %141, i32* %142, align 4
  %144 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %145 = load i32, i32* @RAIDC, align 4
  %146 = call i8* @IXGB_READ_REG(%struct.ixgb_hw* %144, i32 %145)
  %147 = ptrtoint i8* %146 to i32
  %148 = load i32*, i32** %9, align 8
  %149 = getelementptr inbounds i32, i32* %148, i32 1
  store i32* %149, i32** %9, align 8
  store i32 %147, i32* %148, align 4
  %150 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %151 = load i32, i32* @RXCSUM, align 4
  %152 = call i8* @IXGB_READ_REG(%struct.ixgb_hw* %150, i32 %151)
  %153 = ptrtoint i8* %152 to i32
  %154 = load i32*, i32** %9, align 8
  %155 = getelementptr inbounds i32, i32* %154, i32 1
  store i32* %155, i32** %9, align 8
  store i32 %153, i32* %154, align 4
  store i32 0, i32* %11, align 4
  br label %156

156:                                              ; preds = %177, %3
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* @IXGB_ALL_RAR_ENTRIES, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %180

160:                                              ; preds = %156
  %161 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %162 = load i32, i32* @RAL, align 4
  %163 = load i32, i32* %11, align 4
  %164 = shl i32 %163, 1
  %165 = call i8* @IXGB_READ_REG_ARRAY(%struct.ixgb_hw* %161, i32 %162, i32 %164)
  %166 = ptrtoint i8* %165 to i32
  %167 = load i32*, i32** %9, align 8
  %168 = getelementptr inbounds i32, i32* %167, i32 1
  store i32* %168, i32** %9, align 8
  store i32 %166, i32* %167, align 4
  %169 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %170 = load i32, i32* @RAH, align 4
  %171 = load i32, i32* %11, align 4
  %172 = shl i32 %171, 1
  %173 = call i8* @IXGB_READ_REG_ARRAY(%struct.ixgb_hw* %169, i32 %170, i32 %172)
  %174 = ptrtoint i8* %173 to i32
  %175 = load i32*, i32** %9, align 8
  %176 = getelementptr inbounds i32, i32* %175, i32 1
  store i32* %176, i32** %9, align 8
  store i32 %174, i32* %175, align 4
  br label %177

177:                                              ; preds = %160
  %178 = load i32, i32* %11, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %11, align 4
  br label %156

180:                                              ; preds = %156
  %181 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %182 = load i32, i32* @TCTL, align 4
  %183 = call i8* @IXGB_READ_REG(%struct.ixgb_hw* %181, i32 %182)
  %184 = ptrtoint i8* %183 to i32
  %185 = load i32*, i32** %9, align 8
  %186 = getelementptr inbounds i32, i32* %185, i32 1
  store i32* %186, i32** %9, align 8
  store i32 %184, i32* %185, align 4
  %187 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %188 = load i32, i32* @TDBAL, align 4
  %189 = call i8* @IXGB_READ_REG(%struct.ixgb_hw* %187, i32 %188)
  %190 = ptrtoint i8* %189 to i32
  %191 = load i32*, i32** %9, align 8
  %192 = getelementptr inbounds i32, i32* %191, i32 1
  store i32* %192, i32** %9, align 8
  store i32 %190, i32* %191, align 4
  %193 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %194 = load i32, i32* @TDBAH, align 4
  %195 = call i8* @IXGB_READ_REG(%struct.ixgb_hw* %193, i32 %194)
  %196 = ptrtoint i8* %195 to i32
  %197 = load i32*, i32** %9, align 8
  %198 = getelementptr inbounds i32, i32* %197, i32 1
  store i32* %198, i32** %9, align 8
  store i32 %196, i32* %197, align 4
  %199 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %200 = load i32, i32* @TDLEN, align 4
  %201 = call i8* @IXGB_READ_REG(%struct.ixgb_hw* %199, i32 %200)
  %202 = ptrtoint i8* %201 to i32
  %203 = load i32*, i32** %9, align 8
  %204 = getelementptr inbounds i32, i32* %203, i32 1
  store i32* %204, i32** %9, align 8
  store i32 %202, i32* %203, align 4
  %205 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %206 = load i32, i32* @TDH, align 4
  %207 = call i8* @IXGB_READ_REG(%struct.ixgb_hw* %205, i32 %206)
  %208 = ptrtoint i8* %207 to i32
  %209 = load i32*, i32** %9, align 8
  %210 = getelementptr inbounds i32, i32* %209, i32 1
  store i32* %210, i32** %9, align 8
  store i32 %208, i32* %209, align 4
  %211 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %212 = load i32, i32* @TDT, align 4
  %213 = call i8* @IXGB_READ_REG(%struct.ixgb_hw* %211, i32 %212)
  %214 = ptrtoint i8* %213 to i32
  %215 = load i32*, i32** %9, align 8
  %216 = getelementptr inbounds i32, i32* %215, i32 1
  store i32* %216, i32** %9, align 8
  store i32 %214, i32* %215, align 4
  %217 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %218 = load i32, i32* @TIDV, align 4
  %219 = call i8* @IXGB_READ_REG(%struct.ixgb_hw* %217, i32 %218)
  %220 = ptrtoint i8* %219 to i32
  %221 = load i32*, i32** %9, align 8
  %222 = getelementptr inbounds i32, i32* %221, i32 1
  store i32* %222, i32** %9, align 8
  store i32 %220, i32* %221, align 4
  %223 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %224 = load i32, i32* @TXDCTL, align 4
  %225 = call i8* @IXGB_READ_REG(%struct.ixgb_hw* %223, i32 %224)
  %226 = ptrtoint i8* %225 to i32
  %227 = load i32*, i32** %9, align 8
  %228 = getelementptr inbounds i32, i32* %227, i32 1
  store i32* %228, i32** %9, align 8
  store i32 %226, i32* %227, align 4
  %229 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %230 = load i32, i32* @TSPMT, align 4
  %231 = call i8* @IXGB_READ_REG(%struct.ixgb_hw* %229, i32 %230)
  %232 = ptrtoint i8* %231 to i32
  %233 = load i32*, i32** %9, align 8
  %234 = getelementptr inbounds i32, i32* %233, i32 1
  store i32* %234, i32** %9, align 8
  store i32 %232, i32* %233, align 4
  %235 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %236 = load i32, i32* @PAP, align 4
  %237 = call i8* @IXGB_READ_REG(%struct.ixgb_hw* %235, i32 %236)
  %238 = ptrtoint i8* %237 to i32
  %239 = load i32*, i32** %9, align 8
  %240 = getelementptr inbounds i32, i32* %239, i32 1
  store i32* %240, i32** %9, align 8
  store i32 %238, i32* %239, align 4
  %241 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %242 = load i32, i32* @PCSC1, align 4
  %243 = call i8* @IXGB_READ_REG(%struct.ixgb_hw* %241, i32 %242)
  %244 = ptrtoint i8* %243 to i32
  %245 = load i32*, i32** %9, align 8
  %246 = getelementptr inbounds i32, i32* %245, i32 1
  store i32* %246, i32** %9, align 8
  store i32 %244, i32* %245, align 4
  %247 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %248 = load i32, i32* @PCSC2, align 4
  %249 = call i8* @IXGB_READ_REG(%struct.ixgb_hw* %247, i32 %248)
  %250 = ptrtoint i8* %249 to i32
  %251 = load i32*, i32** %9, align 8
  %252 = getelementptr inbounds i32, i32* %251, i32 1
  store i32* %252, i32** %9, align 8
  store i32 %250, i32* %251, align 4
  %253 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %254 = load i32, i32* @PCSS1, align 4
  %255 = call i8* @IXGB_READ_REG(%struct.ixgb_hw* %253, i32 %254)
  %256 = ptrtoint i8* %255 to i32
  %257 = load i32*, i32** %9, align 8
  %258 = getelementptr inbounds i32, i32* %257, i32 1
  store i32* %258, i32** %9, align 8
  store i32 %256, i32* %257, align 4
  %259 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %260 = load i32, i32* @PCSS2, align 4
  %261 = call i8* @IXGB_READ_REG(%struct.ixgb_hw* %259, i32 %260)
  %262 = ptrtoint i8* %261 to i32
  %263 = load i32*, i32** %9, align 8
  %264 = getelementptr inbounds i32, i32* %263, i32 1
  store i32* %264, i32** %9, align 8
  store i32 %262, i32* %263, align 4
  %265 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %266 = load i32, i32* @XPCSS, align 4
  %267 = call i8* @IXGB_READ_REG(%struct.ixgb_hw* %265, i32 %266)
  %268 = ptrtoint i8* %267 to i32
  %269 = load i32*, i32** %9, align 8
  %270 = getelementptr inbounds i32, i32* %269, i32 1
  store i32* %270, i32** %9, align 8
  store i32 %268, i32* %269, align 4
  %271 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %272 = load i32, i32* @UCCR, align 4
  %273 = call i8* @IXGB_READ_REG(%struct.ixgb_hw* %271, i32 %272)
  %274 = ptrtoint i8* %273 to i32
  %275 = load i32*, i32** %9, align 8
  %276 = getelementptr inbounds i32, i32* %275, i32 1
  store i32* %276, i32** %9, align 8
  store i32 %274, i32* %275, align 4
  %277 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %278 = load i32, i32* @XPCSTC, align 4
  %279 = call i8* @IXGB_READ_REG(%struct.ixgb_hw* %277, i32 %278)
  %280 = ptrtoint i8* %279 to i32
  %281 = load i32*, i32** %9, align 8
  %282 = getelementptr inbounds i32, i32* %281, i32 1
  store i32* %282, i32** %9, align 8
  store i32 %280, i32* %281, align 4
  %283 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %284 = load i32, i32* @MACA, align 4
  %285 = call i8* @IXGB_READ_REG(%struct.ixgb_hw* %283, i32 %284)
  %286 = ptrtoint i8* %285 to i32
  %287 = load i32*, i32** %9, align 8
  %288 = getelementptr inbounds i32, i32* %287, i32 1
  store i32* %288, i32** %9, align 8
  store i32 %286, i32* %287, align 4
  %289 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %290 = load i32, i32* @APAE, align 4
  %291 = call i8* @IXGB_READ_REG(%struct.ixgb_hw* %289, i32 %290)
  %292 = ptrtoint i8* %291 to i32
  %293 = load i32*, i32** %9, align 8
  %294 = getelementptr inbounds i32, i32* %293, i32 1
  store i32* %294, i32** %9, align 8
  store i32 %292, i32* %293, align 4
  %295 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %296 = load i32, i32* @ARD, align 4
  %297 = call i8* @IXGB_READ_REG(%struct.ixgb_hw* %295, i32 %296)
  %298 = ptrtoint i8* %297 to i32
  %299 = load i32*, i32** %9, align 8
  %300 = getelementptr inbounds i32, i32* %299, i32 1
  store i32* %300, i32** %9, align 8
  store i32 %298, i32* %299, align 4
  %301 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %302 = load i32, i32* @AIS, align 4
  %303 = call i8* @IXGB_READ_REG(%struct.ixgb_hw* %301, i32 %302)
  %304 = ptrtoint i8* %303 to i32
  %305 = load i32*, i32** %9, align 8
  %306 = getelementptr inbounds i32, i32* %305, i32 1
  store i32* %306, i32** %9, align 8
  store i32 %304, i32* %305, align 4
  %307 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %308 = load i32, i32* @MSCA, align 4
  %309 = call i8* @IXGB_READ_REG(%struct.ixgb_hw* %307, i32 %308)
  %310 = ptrtoint i8* %309 to i32
  %311 = load i32*, i32** %9, align 8
  %312 = getelementptr inbounds i32, i32* %311, i32 1
  store i32* %312, i32** %9, align 8
  store i32 %310, i32* %311, align 4
  %313 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %314 = load i32, i32* @MSRWD, align 4
  %315 = call i8* @IXGB_READ_REG(%struct.ixgb_hw* %313, i32 %314)
  %316 = ptrtoint i8* %315 to i32
  %317 = load i32*, i32** %9, align 8
  %318 = getelementptr inbounds i32, i32* %317, i32 1
  store i32* %318, i32** %9, align 8
  store i32 %316, i32* %317, align 4
  %319 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %320 = load i32, i32* @tprl, align 4
  %321 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %319, i32 %320)
  %322 = ptrtoint i8* %321 to i32
  %323 = load i32*, i32** %9, align 8
  %324 = getelementptr inbounds i32, i32* %323, i32 1
  store i32* %324, i32** %9, align 8
  store i32 %322, i32* %323, align 4
  %325 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %326 = load i32, i32* @tprh, align 4
  %327 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %325, i32 %326)
  %328 = ptrtoint i8* %327 to i32
  %329 = load i32*, i32** %9, align 8
  %330 = getelementptr inbounds i32, i32* %329, i32 1
  store i32* %330, i32** %9, align 8
  store i32 %328, i32* %329, align 4
  %331 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %332 = load i32, i32* @gprcl, align 4
  %333 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %331, i32 %332)
  %334 = ptrtoint i8* %333 to i32
  %335 = load i32*, i32** %9, align 8
  %336 = getelementptr inbounds i32, i32* %335, i32 1
  store i32* %336, i32** %9, align 8
  store i32 %334, i32* %335, align 4
  %337 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %338 = load i32, i32* @gprch, align 4
  %339 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %337, i32 %338)
  %340 = ptrtoint i8* %339 to i32
  %341 = load i32*, i32** %9, align 8
  %342 = getelementptr inbounds i32, i32* %341, i32 1
  store i32* %342, i32** %9, align 8
  store i32 %340, i32* %341, align 4
  %343 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %344 = load i32, i32* @bprcl, align 4
  %345 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %343, i32 %344)
  %346 = ptrtoint i8* %345 to i32
  %347 = load i32*, i32** %9, align 8
  %348 = getelementptr inbounds i32, i32* %347, i32 1
  store i32* %348, i32** %9, align 8
  store i32 %346, i32* %347, align 4
  %349 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %350 = load i32, i32* @bprch, align 4
  %351 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %349, i32 %350)
  %352 = ptrtoint i8* %351 to i32
  %353 = load i32*, i32** %9, align 8
  %354 = getelementptr inbounds i32, i32* %353, i32 1
  store i32* %354, i32** %9, align 8
  store i32 %352, i32* %353, align 4
  %355 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %356 = load i32, i32* @mprcl, align 4
  %357 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %355, i32 %356)
  %358 = ptrtoint i8* %357 to i32
  %359 = load i32*, i32** %9, align 8
  %360 = getelementptr inbounds i32, i32* %359, i32 1
  store i32* %360, i32** %9, align 8
  store i32 %358, i32* %359, align 4
  %361 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %362 = load i32, i32* @mprch, align 4
  %363 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %361, i32 %362)
  %364 = ptrtoint i8* %363 to i32
  %365 = load i32*, i32** %9, align 8
  %366 = getelementptr inbounds i32, i32* %365, i32 1
  store i32* %366, i32** %9, align 8
  store i32 %364, i32* %365, align 4
  %367 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %368 = load i32, i32* @uprcl, align 4
  %369 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %367, i32 %368)
  %370 = ptrtoint i8* %369 to i32
  %371 = load i32*, i32** %9, align 8
  %372 = getelementptr inbounds i32, i32* %371, i32 1
  store i32* %372, i32** %9, align 8
  store i32 %370, i32* %371, align 4
  %373 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %374 = load i32, i32* @uprch, align 4
  %375 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %373, i32 %374)
  %376 = ptrtoint i8* %375 to i32
  %377 = load i32*, i32** %9, align 8
  %378 = getelementptr inbounds i32, i32* %377, i32 1
  store i32* %378, i32** %9, align 8
  store i32 %376, i32* %377, align 4
  %379 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %380 = load i32, i32* @vprcl, align 4
  %381 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %379, i32 %380)
  %382 = ptrtoint i8* %381 to i32
  %383 = load i32*, i32** %9, align 8
  %384 = getelementptr inbounds i32, i32* %383, i32 1
  store i32* %384, i32** %9, align 8
  store i32 %382, i32* %383, align 4
  %385 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %386 = load i32, i32* @vprch, align 4
  %387 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %385, i32 %386)
  %388 = ptrtoint i8* %387 to i32
  %389 = load i32*, i32** %9, align 8
  %390 = getelementptr inbounds i32, i32* %389, i32 1
  store i32* %390, i32** %9, align 8
  store i32 %388, i32* %389, align 4
  %391 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %392 = load i32, i32* @jprcl, align 4
  %393 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %391, i32 %392)
  %394 = ptrtoint i8* %393 to i32
  %395 = load i32*, i32** %9, align 8
  %396 = getelementptr inbounds i32, i32* %395, i32 1
  store i32* %396, i32** %9, align 8
  store i32 %394, i32* %395, align 4
  %397 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %398 = load i32, i32* @jprch, align 4
  %399 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %397, i32 %398)
  %400 = ptrtoint i8* %399 to i32
  %401 = load i32*, i32** %9, align 8
  %402 = getelementptr inbounds i32, i32* %401, i32 1
  store i32* %402, i32** %9, align 8
  store i32 %400, i32* %401, align 4
  %403 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %404 = load i32, i32* @gorcl, align 4
  %405 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %403, i32 %404)
  %406 = ptrtoint i8* %405 to i32
  %407 = load i32*, i32** %9, align 8
  %408 = getelementptr inbounds i32, i32* %407, i32 1
  store i32* %408, i32** %9, align 8
  store i32 %406, i32* %407, align 4
  %409 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %410 = load i32, i32* @gorch, align 4
  %411 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %409, i32 %410)
  %412 = ptrtoint i8* %411 to i32
  %413 = load i32*, i32** %9, align 8
  %414 = getelementptr inbounds i32, i32* %413, i32 1
  store i32* %414, i32** %9, align 8
  store i32 %412, i32* %413, align 4
  %415 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %416 = load i32, i32* @torl, align 4
  %417 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %415, i32 %416)
  %418 = ptrtoint i8* %417 to i32
  %419 = load i32*, i32** %9, align 8
  %420 = getelementptr inbounds i32, i32* %419, i32 1
  store i32* %420, i32** %9, align 8
  store i32 %418, i32* %419, align 4
  %421 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %422 = load i32, i32* @torh, align 4
  %423 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %421, i32 %422)
  %424 = ptrtoint i8* %423 to i32
  %425 = load i32*, i32** %9, align 8
  %426 = getelementptr inbounds i32, i32* %425, i32 1
  store i32* %426, i32** %9, align 8
  store i32 %424, i32* %425, align 4
  %427 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %428 = load i32, i32* @rnbc, align 4
  %429 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %427, i32 %428)
  %430 = ptrtoint i8* %429 to i32
  %431 = load i32*, i32** %9, align 8
  %432 = getelementptr inbounds i32, i32* %431, i32 1
  store i32* %432, i32** %9, align 8
  store i32 %430, i32* %431, align 4
  %433 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %434 = load i32, i32* @ruc, align 4
  %435 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %433, i32 %434)
  %436 = ptrtoint i8* %435 to i32
  %437 = load i32*, i32** %9, align 8
  %438 = getelementptr inbounds i32, i32* %437, i32 1
  store i32* %438, i32** %9, align 8
  store i32 %436, i32* %437, align 4
  %439 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %440 = load i32, i32* @roc, align 4
  %441 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %439, i32 %440)
  %442 = ptrtoint i8* %441 to i32
  %443 = load i32*, i32** %9, align 8
  %444 = getelementptr inbounds i32, i32* %443, i32 1
  store i32* %444, i32** %9, align 8
  store i32 %442, i32* %443, align 4
  %445 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %446 = load i32, i32* @rlec, align 4
  %447 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %445, i32 %446)
  %448 = ptrtoint i8* %447 to i32
  %449 = load i32*, i32** %9, align 8
  %450 = getelementptr inbounds i32, i32* %449, i32 1
  store i32* %450, i32** %9, align 8
  store i32 %448, i32* %449, align 4
  %451 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %452 = load i32, i32* @crcerrs, align 4
  %453 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %451, i32 %452)
  %454 = ptrtoint i8* %453 to i32
  %455 = load i32*, i32** %9, align 8
  %456 = getelementptr inbounds i32, i32* %455, i32 1
  store i32* %456, i32** %9, align 8
  store i32 %454, i32* %455, align 4
  %457 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %458 = load i32, i32* @icbc, align 4
  %459 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %457, i32 %458)
  %460 = ptrtoint i8* %459 to i32
  %461 = load i32*, i32** %9, align 8
  %462 = getelementptr inbounds i32, i32* %461, i32 1
  store i32* %462, i32** %9, align 8
  store i32 %460, i32* %461, align 4
  %463 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %464 = load i32, i32* @ecbc, align 4
  %465 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %463, i32 %464)
  %466 = ptrtoint i8* %465 to i32
  %467 = load i32*, i32** %9, align 8
  %468 = getelementptr inbounds i32, i32* %467, i32 1
  store i32* %468, i32** %9, align 8
  store i32 %466, i32* %467, align 4
  %469 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %470 = load i32, i32* @mpc, align 4
  %471 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %469, i32 %470)
  %472 = ptrtoint i8* %471 to i32
  %473 = load i32*, i32** %9, align 8
  %474 = getelementptr inbounds i32, i32* %473, i32 1
  store i32* %474, i32** %9, align 8
  store i32 %472, i32* %473, align 4
  %475 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %476 = load i32, i32* @tptl, align 4
  %477 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %475, i32 %476)
  %478 = ptrtoint i8* %477 to i32
  %479 = load i32*, i32** %9, align 8
  %480 = getelementptr inbounds i32, i32* %479, i32 1
  store i32* %480, i32** %9, align 8
  store i32 %478, i32* %479, align 4
  %481 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %482 = load i32, i32* @tpth, align 4
  %483 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %481, i32 %482)
  %484 = ptrtoint i8* %483 to i32
  %485 = load i32*, i32** %9, align 8
  %486 = getelementptr inbounds i32, i32* %485, i32 1
  store i32* %486, i32** %9, align 8
  store i32 %484, i32* %485, align 4
  %487 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %488 = load i32, i32* @gptcl, align 4
  %489 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %487, i32 %488)
  %490 = ptrtoint i8* %489 to i32
  %491 = load i32*, i32** %9, align 8
  %492 = getelementptr inbounds i32, i32* %491, i32 1
  store i32* %492, i32** %9, align 8
  store i32 %490, i32* %491, align 4
  %493 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %494 = load i32, i32* @gptch, align 4
  %495 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %493, i32 %494)
  %496 = ptrtoint i8* %495 to i32
  %497 = load i32*, i32** %9, align 8
  %498 = getelementptr inbounds i32, i32* %497, i32 1
  store i32* %498, i32** %9, align 8
  store i32 %496, i32* %497, align 4
  %499 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %500 = load i32, i32* @bptcl, align 4
  %501 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %499, i32 %500)
  %502 = ptrtoint i8* %501 to i32
  %503 = load i32*, i32** %9, align 8
  %504 = getelementptr inbounds i32, i32* %503, i32 1
  store i32* %504, i32** %9, align 8
  store i32 %502, i32* %503, align 4
  %505 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %506 = load i32, i32* @bptch, align 4
  %507 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %505, i32 %506)
  %508 = ptrtoint i8* %507 to i32
  %509 = load i32*, i32** %9, align 8
  %510 = getelementptr inbounds i32, i32* %509, i32 1
  store i32* %510, i32** %9, align 8
  store i32 %508, i32* %509, align 4
  %511 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %512 = load i32, i32* @mptcl, align 4
  %513 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %511, i32 %512)
  %514 = ptrtoint i8* %513 to i32
  %515 = load i32*, i32** %9, align 8
  %516 = getelementptr inbounds i32, i32* %515, i32 1
  store i32* %516, i32** %9, align 8
  store i32 %514, i32* %515, align 4
  %517 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %518 = load i32, i32* @mptch, align 4
  %519 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %517, i32 %518)
  %520 = ptrtoint i8* %519 to i32
  %521 = load i32*, i32** %9, align 8
  %522 = getelementptr inbounds i32, i32* %521, i32 1
  store i32* %522, i32** %9, align 8
  store i32 %520, i32* %521, align 4
  %523 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %524 = load i32, i32* @uptcl, align 4
  %525 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %523, i32 %524)
  %526 = ptrtoint i8* %525 to i32
  %527 = load i32*, i32** %9, align 8
  %528 = getelementptr inbounds i32, i32* %527, i32 1
  store i32* %528, i32** %9, align 8
  store i32 %526, i32* %527, align 4
  %529 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %530 = load i32, i32* @uptch, align 4
  %531 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %529, i32 %530)
  %532 = ptrtoint i8* %531 to i32
  %533 = load i32*, i32** %9, align 8
  %534 = getelementptr inbounds i32, i32* %533, i32 1
  store i32* %534, i32** %9, align 8
  store i32 %532, i32* %533, align 4
  %535 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %536 = load i32, i32* @vptcl, align 4
  %537 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %535, i32 %536)
  %538 = ptrtoint i8* %537 to i32
  %539 = load i32*, i32** %9, align 8
  %540 = getelementptr inbounds i32, i32* %539, i32 1
  store i32* %540, i32** %9, align 8
  store i32 %538, i32* %539, align 4
  %541 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %542 = load i32, i32* @vptch, align 4
  %543 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %541, i32 %542)
  %544 = ptrtoint i8* %543 to i32
  %545 = load i32*, i32** %9, align 8
  %546 = getelementptr inbounds i32, i32* %545, i32 1
  store i32* %546, i32** %9, align 8
  store i32 %544, i32* %545, align 4
  %547 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %548 = load i32, i32* @jptcl, align 4
  %549 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %547, i32 %548)
  %550 = ptrtoint i8* %549 to i32
  %551 = load i32*, i32** %9, align 8
  %552 = getelementptr inbounds i32, i32* %551, i32 1
  store i32* %552, i32** %9, align 8
  store i32 %550, i32* %551, align 4
  %553 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %554 = load i32, i32* @jptch, align 4
  %555 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %553, i32 %554)
  %556 = ptrtoint i8* %555 to i32
  %557 = load i32*, i32** %9, align 8
  %558 = getelementptr inbounds i32, i32* %557, i32 1
  store i32* %558, i32** %9, align 8
  store i32 %556, i32* %557, align 4
  %559 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %560 = load i32, i32* @gotcl, align 4
  %561 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %559, i32 %560)
  %562 = ptrtoint i8* %561 to i32
  %563 = load i32*, i32** %9, align 8
  %564 = getelementptr inbounds i32, i32* %563, i32 1
  store i32* %564, i32** %9, align 8
  store i32 %562, i32* %563, align 4
  %565 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %566 = load i32, i32* @gotch, align 4
  %567 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %565, i32 %566)
  %568 = ptrtoint i8* %567 to i32
  %569 = load i32*, i32** %9, align 8
  %570 = getelementptr inbounds i32, i32* %569, i32 1
  store i32* %570, i32** %9, align 8
  store i32 %568, i32* %569, align 4
  %571 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %572 = load i32, i32* @totl, align 4
  %573 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %571, i32 %572)
  %574 = ptrtoint i8* %573 to i32
  %575 = load i32*, i32** %9, align 8
  %576 = getelementptr inbounds i32, i32* %575, i32 1
  store i32* %576, i32** %9, align 8
  store i32 %574, i32* %575, align 4
  %577 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %578 = load i32, i32* @toth, align 4
  %579 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %577, i32 %578)
  %580 = ptrtoint i8* %579 to i32
  %581 = load i32*, i32** %9, align 8
  %582 = getelementptr inbounds i32, i32* %581, i32 1
  store i32* %582, i32** %9, align 8
  store i32 %580, i32* %581, align 4
  %583 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %584 = load i32, i32* @dc, align 4
  %585 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %583, i32 %584)
  %586 = ptrtoint i8* %585 to i32
  %587 = load i32*, i32** %9, align 8
  %588 = getelementptr inbounds i32, i32* %587, i32 1
  store i32* %588, i32** %9, align 8
  store i32 %586, i32* %587, align 4
  %589 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %590 = load i32, i32* @plt64c, align 4
  %591 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %589, i32 %590)
  %592 = ptrtoint i8* %591 to i32
  %593 = load i32*, i32** %9, align 8
  %594 = getelementptr inbounds i32, i32* %593, i32 1
  store i32* %594, i32** %9, align 8
  store i32 %592, i32* %593, align 4
  %595 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %596 = load i32, i32* @tsctc, align 4
  %597 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %595, i32 %596)
  %598 = ptrtoint i8* %597 to i32
  %599 = load i32*, i32** %9, align 8
  %600 = getelementptr inbounds i32, i32* %599, i32 1
  store i32* %600, i32** %9, align 8
  store i32 %598, i32* %599, align 4
  %601 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %602 = load i32, i32* @tsctfc, align 4
  %603 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %601, i32 %602)
  %604 = ptrtoint i8* %603 to i32
  %605 = load i32*, i32** %9, align 8
  %606 = getelementptr inbounds i32, i32* %605, i32 1
  store i32* %606, i32** %9, align 8
  store i32 %604, i32* %605, align 4
  %607 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %608 = load i32, i32* @ibic, align 4
  %609 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %607, i32 %608)
  %610 = ptrtoint i8* %609 to i32
  %611 = load i32*, i32** %9, align 8
  %612 = getelementptr inbounds i32, i32* %611, i32 1
  store i32* %612, i32** %9, align 8
  store i32 %610, i32* %611, align 4
  %613 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %614 = load i32, i32* @rfc, align 4
  %615 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %613, i32 %614)
  %616 = ptrtoint i8* %615 to i32
  %617 = load i32*, i32** %9, align 8
  %618 = getelementptr inbounds i32, i32* %617, i32 1
  store i32* %618, i32** %9, align 8
  store i32 %616, i32* %617, align 4
  %619 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %620 = load i32, i32* @lfc, align 4
  %621 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %619, i32 %620)
  %622 = ptrtoint i8* %621 to i32
  %623 = load i32*, i32** %9, align 8
  %624 = getelementptr inbounds i32, i32* %623, i32 1
  store i32* %624, i32** %9, align 8
  store i32 %622, i32* %623, align 4
  %625 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %626 = load i32, i32* @pfrc, align 4
  %627 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %625, i32 %626)
  %628 = ptrtoint i8* %627 to i32
  %629 = load i32*, i32** %9, align 8
  %630 = getelementptr inbounds i32, i32* %629, i32 1
  store i32* %630, i32** %9, align 8
  store i32 %628, i32* %629, align 4
  %631 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %632 = load i32, i32* @pftc, align 4
  %633 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %631, i32 %632)
  %634 = ptrtoint i8* %633 to i32
  %635 = load i32*, i32** %9, align 8
  %636 = getelementptr inbounds i32, i32* %635, i32 1
  store i32* %636, i32** %9, align 8
  store i32 %634, i32* %635, align 4
  %637 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %638 = load i32, i32* @mcfrc, align 4
  %639 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %637, i32 %638)
  %640 = ptrtoint i8* %639 to i32
  %641 = load i32*, i32** %9, align 8
  %642 = getelementptr inbounds i32, i32* %641, i32 1
  store i32* %642, i32** %9, align 8
  store i32 %640, i32* %641, align 4
  %643 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %644 = load i32, i32* @mcftc, align 4
  %645 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %643, i32 %644)
  %646 = ptrtoint i8* %645 to i32
  %647 = load i32*, i32** %9, align 8
  %648 = getelementptr inbounds i32, i32* %647, i32 1
  store i32* %648, i32** %9, align 8
  store i32 %646, i32* %647, align 4
  %649 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %650 = load i32, i32* @xonrxc, align 4
  %651 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %649, i32 %650)
  %652 = ptrtoint i8* %651 to i32
  %653 = load i32*, i32** %9, align 8
  %654 = getelementptr inbounds i32, i32* %653, i32 1
  store i32* %654, i32** %9, align 8
  store i32 %652, i32* %653, align 4
  %655 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %656 = load i32, i32* @xontxc, align 4
  %657 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %655, i32 %656)
  %658 = ptrtoint i8* %657 to i32
  %659 = load i32*, i32** %9, align 8
  %660 = getelementptr inbounds i32, i32* %659, i32 1
  store i32* %660, i32** %9, align 8
  store i32 %658, i32* %659, align 4
  %661 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %662 = load i32, i32* @xoffrxc, align 4
  %663 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %661, i32 %662)
  %664 = ptrtoint i8* %663 to i32
  %665 = load i32*, i32** %9, align 8
  %666 = getelementptr inbounds i32, i32* %665, i32 1
  store i32* %666, i32** %9, align 8
  store i32 %664, i32* %665, align 4
  %667 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %668 = load i32, i32* @xofftxc, align 4
  %669 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %667, i32 %668)
  %670 = ptrtoint i8* %669 to i32
  %671 = load i32*, i32** %9, align 8
  %672 = getelementptr inbounds i32, i32* %671, i32 1
  store i32* %672, i32** %9, align 8
  store i32 %670, i32* %671, align 4
  %673 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %674 = load i32, i32* @rjc, align 4
  %675 = call i8* @IXGB_GET_STAT(%struct.ixgb_adapter* %673, i32 %674)
  %676 = ptrtoint i8* %675 to i32
  %677 = load i32*, i32** %9, align 8
  %678 = getelementptr inbounds i32, i32* %677, i32 1
  store i32* %678, i32** %9, align 8
  store i32 %676, i32* %677, align 4
  %679 = load i32*, i32** %9, align 8
  %680 = load i32*, i32** %10, align 8
  %681 = ptrtoint i32* %679 to i64
  %682 = ptrtoint i32* %680 to i64
  %683 = sub i64 %681, %682
  %684 = sdiv exact i64 %683, 4
  %685 = mul i64 %684, 4
  %686 = trunc i64 %685 to i32
  %687 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %688 = getelementptr inbounds %struct.ethtool_regs, %struct.ethtool_regs* %687, i32 0, i32 1
  store i32 %686, i32* %688, align 4
  ret void
}

declare dso_local %struct.ixgb_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @IXGB_READ_REG(%struct.ixgb_hw*, i32) #1

declare dso_local i8* @IXGB_READ_REG_ARRAY(%struct.ixgb_hw*, i32, i32) #1

declare dso_local i8* @IXGB_GET_STAT(%struct.ixgb_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
