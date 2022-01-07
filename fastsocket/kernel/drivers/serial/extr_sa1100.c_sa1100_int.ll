; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sa1100.c_sa1100_int.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sa1100.c_sa1100_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa1100_port = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@UTSR0_TFS = common dso_local global i32 0, align 4
@UTSR0_RFS = common dso_local global i32 0, align 4
@UTSR0_RID = common dso_local global i32 0, align 4
@UTSR0_RBB = common dso_local global i32 0, align 4
@UTSR0_REB = common dso_local global i32 0, align 4
@SA1100_ISR_PASS_LIMIT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sa1100_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa1100_int(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sa1100_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.sa1100_port*
  store %struct.sa1100_port* %9, %struct.sa1100_port** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.sa1100_port*, %struct.sa1100_port** %5, align 8
  %11 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.sa1100_port*, %struct.sa1100_port** %5, align 8
  %15 = call i32 @UART_GET_UTSR0(%struct.sa1100_port* %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.sa1100_port*, %struct.sa1100_port** %5, align 8
  %17 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @SM_TO_UTSR0(i32 %19)
  %21 = load i32, i32* @UTSR0_TFS, align 4
  %22 = xor i32 %21, -1
  %23 = or i32 %20, %22
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %108, %2
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @UTSR0_RFS, align 4
  %29 = load i32, i32* @UTSR0_RID, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %26
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @UTSR0_RID, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.sa1100_port*, %struct.sa1100_port** %5, align 8
  %40 = load i32, i32* @UTSR0_RID, align 4
  %41 = call i32 @UART_PUT_UTSR0(%struct.sa1100_port* %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %33
  %43 = load %struct.sa1100_port*, %struct.sa1100_port** %5, align 8
  %44 = call i32 @sa1100_rx_chars(%struct.sa1100_port* %43)
  br label %45

45:                                               ; preds = %42, %26
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @UTSR0_RBB, align 4
  %48 = load i32, i32* @UTSR0_REB, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %46, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %45
  %53 = load %struct.sa1100_port*, %struct.sa1100_port** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @UTSR0_RBB, align 4
  %56 = load i32, i32* @UTSR0_REB, align 4
  %57 = or i32 %55, %56
  %58 = and i32 %54, %57
  %59 = call i32 @UART_PUT_UTSR0(%struct.sa1100_port* %53, i32 %58)
  br label %60

60:                                               ; preds = %52, %45
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @UTSR0_RBB, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load %struct.sa1100_port*, %struct.sa1100_port** %5, align 8
  %67 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %65, %60
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @UTSR0_REB, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load %struct.sa1100_port*, %struct.sa1100_port** %5, align 8
  %79 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %78, i32 0, i32 0
  %80 = call i32 @uart_handle_break(%struct.TYPE_4__* %79)
  br label %81

81:                                               ; preds = %77, %72
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @UTSR0_TFS, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load %struct.sa1100_port*, %struct.sa1100_port** %5, align 8
  %88 = call i32 @sa1100_tx_chars(%struct.sa1100_port* %87)
  br label %89

89:                                               ; preds = %86, %81
  %90 = load i32, i32* %7, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* @SA1100_ISR_PASS_LIMIT, align 4
  %93 = icmp ugt i32 %90, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  br label %117

95:                                               ; preds = %89
  %96 = load %struct.sa1100_port*, %struct.sa1100_port** %5, align 8
  %97 = call i32 @UART_GET_UTSR0(%struct.sa1100_port* %96)
  store i32 %97, i32* %6, align 4
  %98 = load %struct.sa1100_port*, %struct.sa1100_port** %5, align 8
  %99 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @SM_TO_UTSR0(i32 %101)
  %103 = load i32, i32* @UTSR0_TFS, align 4
  %104 = xor i32 %103, -1
  %105 = or i32 %102, %104
  %106 = load i32, i32* %6, align 4
  %107 = and i32 %106, %105
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %95
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @UTSR0_TFS, align 4
  %111 = load i32, i32* @UTSR0_RFS, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @UTSR0_RID, align 4
  %114 = or i32 %112, %113
  %115 = and i32 %109, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %26, label %117

117:                                              ; preds = %108, %94
  %118 = load %struct.sa1100_port*, %struct.sa1100_port** %5, align 8
  %119 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = call i32 @spin_unlock(i32* %120)
  %122 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %122
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @UART_GET_UTSR0(%struct.sa1100_port*) #1

declare dso_local i32 @SM_TO_UTSR0(i32) #1

declare dso_local i32 @UART_PUT_UTSR0(%struct.sa1100_port*, i32) #1

declare dso_local i32 @sa1100_rx_chars(%struct.sa1100_port*) #1

declare dso_local i32 @uart_handle_break(%struct.TYPE_4__*) #1

declare dso_local i32 @sa1100_tx_chars(%struct.sa1100_port*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
