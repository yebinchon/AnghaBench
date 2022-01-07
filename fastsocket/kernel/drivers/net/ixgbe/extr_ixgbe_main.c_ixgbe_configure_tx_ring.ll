; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_configure_tx_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_configure_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i64, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.ixgbe_ring = type { i32, i32, i32, i64, i64, %struct.TYPE_3__*, i64, i32 }
%struct.TYPE_3__ = type { i32 }

@IXGBE_TXDCTL_ENABLE = common dso_local global i32 0, align 4
@IXGBE_FLAG_FDIR_HASH_CAPABLE = common dso_local global i32 0, align 4
@__IXGBE_TX_FDIR_INIT_DONE = common dso_local global i32 0, align 4
@__IXGBE_HANG_CHECK_ARMED = common dso_local global i32 0, align 4
@ixgbe_mac_82598EB = common dso_local global i64 0, align 8
@IXGBE_LINKS = common dso_local global i64 0, align 8
@IXGBE_LINKS_UP = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Could not enable Tx Queue %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_configure_tx_ring(%struct.ixgbe_adapter* %0, %struct.ixgbe_ring* %1) #0 {
  %3 = alloca %struct.ixgbe_adapter*, align 8
  %4 = alloca %struct.ixgbe_ring*, align 8
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %3, align 8
  store %struct.ixgbe_ring* %1, %struct.ixgbe_ring** %4, align 8
  %10 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %10, i32 0, i32 2
  store %struct.ixgbe_hw* %11, %struct.ixgbe_hw** %5, align 8
  %12 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %13 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  store i32 10, i32* %7, align 4
  %15 = load i32, i32* @IXGBE_TXDCTL_ENABLE, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %17 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %9, align 4
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i64 @IXGBE_TXDCTL(i32 %20)
  %22 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %19, i64 %21, i32 0)
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %24 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %23)
  %25 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i64 @IXGBE_TDBAL(i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @DMA_BIT_MASK(i32 32)
  %30 = and i32 %28, %29
  %31 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %25, i64 %27, i32 %30)
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i64 @IXGBE_TDBAH(i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = ashr i32 %35, 32
  %37 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %32, i64 %34, i32 %36)
  %38 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i64 @IXGBE_TDLEN(i32 %39)
  %41 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %42 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 4
  %46 = trunc i64 %45 to i32
  %47 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %38, i64 %40, i32 %46)
  %48 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i64 @IXGBE_TDH(i32 %49)
  %51 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %48, i64 %50, i32 0)
  %52 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i64 @IXGBE_TDT(i32 %53)
  %55 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %52, i64 %54, i32 0)
  %56 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %57 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i64 @IXGBE_TDT(i32 %59)
  %61 = add nsw i64 %58, %60
  %62 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %63 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %62, i32 0, i32 6
  store i64 %61, i64* %63, align 8
  %64 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %65 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %64, i32 0, i32 5
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = icmp ne %struct.TYPE_3__* %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %2
  %69 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %70 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %69, i32 0, i32 5
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp slt i32 %73, 8
  br i1 %74, label %75, label %78

75:                                               ; preds = %68, %2
  %76 = load i32, i32* %8, align 4
  %77 = or i32 %76, 65536
  store i32 %77, i32* %8, align 4
  br label %81

78:                                               ; preds = %68
  %79 = load i32, i32* %8, align 4
  %80 = or i32 %79, 524288
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %78, %75
  %82 = load i32, i32* %8, align 4
  %83 = or i32 %82, 288
  store i32 %83, i32* %8, align 4
  %84 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %85 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @IXGBE_FLAG_FDIR_HASH_CAPABLE, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %81
  %91 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %92 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %95 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %94, i32 0, i32 3
  store i64 %93, i64* %95, align 8
  %96 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %97 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %96, i32 0, i32 4
  store i64 0, i64* %97, align 8
  %98 = load i32, i32* @__IXGBE_TX_FDIR_INIT_DONE, align 4
  %99 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %100 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %99, i32 0, i32 2
  %101 = call i32 @set_bit(i32 %98, i32* %100)
  br label %105

102:                                              ; preds = %81
  %103 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %104 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %103, i32 0, i32 3
  store i64 0, i64* %104, align 8
  br label %105

105:                                              ; preds = %102, %90
  %106 = load i32, i32* @__IXGBE_HANG_CHECK_ARMED, align 4
  %107 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %108 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %107, i32 0, i32 2
  %109 = call i32 @clear_bit(i32 %106, i32* %108)
  %110 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %111 = load i32, i32* %9, align 4
  %112 = call i64 @IXGBE_TXDCTL(i32 %111)
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %110, i64 %112, i32 %113)
  %115 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %116 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @ixgbe_mac_82598EB, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %129

121:                                              ; preds = %105
  %122 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %123 = load i64, i64* @IXGBE_LINKS, align 8
  %124 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %122, i64 %123)
  %125 = load i32, i32* @IXGBE_LINKS_UP, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %121
  br label %155

129:                                              ; preds = %121, %105
  br label %130

130:                                              ; preds = %146, %129
  %131 = call i32 @usleep_range(i32 1000, i32 2000)
  %132 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %133 = load i32, i32* %9, align 4
  %134 = call i64 @IXGBE_TXDCTL(i32 %133)
  %135 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %132, i64 %134)
  store i32 %135, i32* %8, align 4
  br label %136

136:                                              ; preds = %130
  %137 = load i32, i32* %7, align 4
  %138 = add nsw i32 %137, -1
  store i32 %138, i32* %7, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %136
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* @IXGBE_TXDCTL_ENABLE, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  %145 = xor i1 %144, true
  br label %146

146:                                              ; preds = %140, %136
  %147 = phi i1 [ false, %136 ], [ %145, %140 ]
  br i1 %147, label %130, label %148

148:                                              ; preds = %146
  %149 = load i32, i32* %7, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %155, label %151

151:                                              ; preds = %148
  %152 = load i32, i32* @drv, align 4
  %153 = load i32, i32* %9, align 4
  %154 = call i32 @e_err(i32 %152, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %153)
  br label %155

155:                                              ; preds = %128, %151, %148
  ret void
}

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i64, i32) #1

declare dso_local i64 @IXGBE_TXDCTL(i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

declare dso_local i64 @IXGBE_TDBAL(i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i64 @IXGBE_TDBAH(i32) #1

declare dso_local i64 @IXGBE_TDLEN(i32) #1

declare dso_local i64 @IXGBE_TDH(i32) #1

declare dso_local i64 @IXGBE_TDT(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @e_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
