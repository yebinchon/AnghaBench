; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_x540.c_ixgbe_reset_hw_X540.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_x540.c_ixgbe_reset_hw_X540.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_3__, i64, i64, i32, i32 }
%struct.TYPE_3__ = type { i64 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.1*, i32*, i32*)*, i32 (%struct.ixgbe_hw.2*, i64, i32, i32, i32)*, i32 (%struct.ixgbe_hw.3*, i32)*, i32 (%struct.ixgbe_hw.4*)*, i32 (%struct.ixgbe_hw.5*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.ixgbe_hw.2 = type opaque
%struct.ixgbe_hw.3 = type opaque
%struct.ixgbe_hw.4 = type opaque
%struct.ixgbe_hw.5 = type opaque

@IXGBE_CTRL_RST = common dso_local global i32 0, align 4
@IXGBE_CTRL = common dso_local global i32 0, align 4
@IXGBE_CTRL_RST_MASK = common dso_local global i32 0, align 4
@IXGBE_ERR_RESET_FAILED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Reset polling failed to complete.\0A\00", align 1
@IXGBE_FLAGS_DOUBLE_RESET_REQUIRED = common dso_local global i32 0, align 4
@IXGBE_RXPBSIZE_SHIFT = common dso_local global i32 0, align 4
@IXGBE_X540_MAX_TX_QUEUES = common dso_local global i64 0, align 8
@IXGBE_RAH_AV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*)* @ixgbe_reset_hw_X540 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_reset_hw_X540(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %6 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %7 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64 (%struct.ixgbe_hw.0*)*, i64 (%struct.ixgbe_hw.0*)** %9, align 8
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %12 = bitcast %struct.ixgbe_hw* %11 to %struct.ixgbe_hw.0*
  %13 = call i64 %10(%struct.ixgbe_hw.0* %12)
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %171

17:                                               ; preds = %1
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %19 = call i32 @ixgbe_clear_tx_pending(%struct.ixgbe_hw* %18)
  br label %20

20:                                               ; preds = %68, %17
  %21 = load i32, i32* @IXGBE_CTRL_RST, align 4
  store i32 %21, i32* %4, align 4
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %23 = load i32, i32* @IXGBE_CTRL, align 4
  %24 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %22, i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %4, align 4
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %28 = load i32, i32* @IXGBE_CTRL, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %27, i32 %28, i32 %29)
  %31 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %32 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %31)
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %47, %20
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 10
  br i1 %35, label %36, label %50

36:                                               ; preds = %33
  %37 = call i32 @udelay(i32 1)
  %38 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %39 = load i32, i32* @IXGBE_CTRL, align 4
  %40 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %38, i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @IXGBE_CTRL_RST_MASK, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %36
  br label %50

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %33

50:                                               ; preds = %45, %33
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @IXGBE_CTRL_RST_MASK, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i64, i64* @IXGBE_ERR_RESET_FAILED, align 8
  store i64 %56, i64* %3, align 8
  %57 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %58 = call i32 @hw_dbg(%struct.ixgbe_hw* %57, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %59

59:                                               ; preds = %55, %50
  %60 = call i32 @msleep(i32 100)
  %61 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %62 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @IXGBE_FLAGS_DOUBLE_RESET_REQUIRED, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %59
  %69 = load i32, i32* @IXGBE_FLAGS_DOUBLE_RESET_REQUIRED, align 4
  %70 = xor i32 %69, -1
  %71 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %72 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %74, %70
  store i32 %75, i32* %73, align 8
  br label %20

76:                                               ; preds = %59
  %77 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %78 = call i32 @IXGBE_RXPBSIZE(i32 0)
  %79 = load i32, i32* @IXGBE_RXPBSIZE_SHIFT, align 4
  %80 = shl i32 384, %79
  %81 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %77, i32 %78, i32 %80)
  %82 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %83 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 5
  %86 = load i32 (%struct.ixgbe_hw.5*, i32)*, i32 (%struct.ixgbe_hw.5*, i32)** %85, align 8
  %87 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %88 = bitcast %struct.ixgbe_hw* %87 to %struct.ixgbe_hw.5*
  %89 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %90 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 7
  %92 = load i32, i32* %91, align 4
  %93 = call i32 %86(%struct.ixgbe_hw.5* %88, i32 %92)
  %94 = load i64, i64* @IXGBE_X540_MAX_TX_QUEUES, align 8
  %95 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %96 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 4
  store i64 %94, i64* %97, align 8
  %98 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %99 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 4
  %102 = load i32 (%struct.ixgbe_hw.4*)*, i32 (%struct.ixgbe_hw.4*)** %101, align 8
  %103 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %104 = bitcast %struct.ixgbe_hw* %103 to %struct.ixgbe_hw.4*
  %105 = call i32 %102(%struct.ixgbe_hw.4* %104)
  %106 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %107 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 3
  %110 = load i32 (%struct.ixgbe_hw.3*, i32)*, i32 (%struct.ixgbe_hw.3*, i32)** %109, align 8
  %111 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %112 = bitcast %struct.ixgbe_hw* %111 to %struct.ixgbe_hw.3*
  %113 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %114 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 6
  %116 = load i32, i32* %115, align 8
  %117 = call i32 %110(%struct.ixgbe_hw.3* %112, i32 %116)
  %118 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %119 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 6
  %121 = load i32, i32* %120, align 8
  %122 = call i64 @is_valid_ether_addr(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %156

124:                                              ; preds = %76
  %125 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %126 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 2
  %129 = load i32 (%struct.ixgbe_hw.2*, i64, i32, i32, i32)*, i32 (%struct.ixgbe_hw.2*, i64, i32, i32, i32)** %128, align 8
  %130 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %131 = bitcast %struct.ixgbe_hw* %130 to %struct.ixgbe_hw.2*
  %132 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %133 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 4
  %135 = load i64, i64* %134, align 8
  %136 = sub nsw i64 %135, 1
  %137 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %138 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @IXGBE_RAH_AV, align 4
  %142 = call i32 %129(%struct.ixgbe_hw.2* %131, i64 %136, i32 %140, i32 0, i32 %141)
  %143 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %144 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 4
  %146 = load i64, i64* %145, align 8
  %147 = sub nsw i64 %146, 1
  %148 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %149 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 5
  store i64 %147, i64* %150, align 8
  %151 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %152 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 4
  %154 = load i64, i64* %153, align 8
  %155 = add nsw i64 %154, -1
  store i64 %155, i64* %153, align 8
  br label %156

156:                                              ; preds = %124, %76
  %157 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %158 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 1
  %161 = load i32 (%struct.ixgbe_hw.1*, i32*, i32*)*, i32 (%struct.ixgbe_hw.1*, i32*, i32*)** %160, align 8
  %162 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %163 = bitcast %struct.ixgbe_hw* %162 to %struct.ixgbe_hw.1*
  %164 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %165 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 2
  %167 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %168 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 1
  %170 = call i32 %161(%struct.ixgbe_hw.1* %163, i32* %166, i32* %169)
  br label %171

171:                                              ; preds = %156, %16
  %172 = load i64, i64* %3, align 8
  ret i64 %172
}

declare dso_local i32 @ixgbe_clear_tx_pending(%struct.ixgbe_hw*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @IXGBE_RXPBSIZE(i32) #1

declare dso_local i64 @is_valid_ether_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
