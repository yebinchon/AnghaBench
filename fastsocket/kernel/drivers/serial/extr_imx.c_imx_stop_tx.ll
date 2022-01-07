; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_imx.c_imx_stop_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_imx.c_imx_stop_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.imx_port = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@USR2 = common dso_local global i64 0, align 8
@USR2_TXDC = common dso_local global i32 0, align 4
@UCR1 = common dso_local global i64 0, align 8
@UCR1_TXMPTYEN = common dso_local global i64 0, align 8
@UCR1_TRDYEN = common dso_local global i64 0, align 8
@UCR4 = common dso_local global i64 0, align 8
@UCR4_TCEN = common dso_local global i64 0, align 8
@URXD0 = common dso_local global i64 0, align 8
@URXD_CHARRDY = common dso_local global i32 0, align 4
@UCR1_RRDYEN = common dso_local global i64 0, align 8
@UCR4_DREN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @imx_stop_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_stop_tx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.imx_port*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = bitcast %struct.uart_port* %6 to %struct.imx_port*
  store %struct.imx_port* %7, %struct.imx_port** %3, align 8
  %8 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %9 = call i64 @USE_IRDA(%struct.imx_port* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %144

11:                                               ; preds = %1
  store i32 256, i32* %5, align 4
  br label %12

12:                                               ; preds = %30, %11
  %13 = load i32, i32* %5, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %5, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  %17 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %18 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @USR2, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readl(i64 %22)
  %24 = load i32, i32* @USR2_TXDC, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %16, %12
  %29 = phi i1 [ false, %12 ], [ %27, %16 ]
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  %31 = call i32 @udelay(i32 5)
  %32 = call i32 (...) @barrier()
  br label %12

33:                                               ; preds = %28
  %34 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %35 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @udelay(i32 %36)
  %38 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %39 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @USR2, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @readl(i64 %43)
  %45 = load i32, i32* @USR2_TXDC, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %143

48:                                               ; preds = %33
  %49 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %50 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @UCR1, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @readl(i64 %54)
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %4, align 8
  %57 = load i64, i64* @UCR1_TXMPTYEN, align 8
  %58 = load i64, i64* @UCR1_TRDYEN, align 8
  %59 = or i64 %57, %58
  %60 = xor i64 %59, -1
  %61 = load i64, i64* %4, align 8
  %62 = and i64 %61, %60
  store i64 %62, i64* %4, align 8
  %63 = load i64, i64* %4, align 8
  %64 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %65 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @UCR1, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @writel(i64 %63, i64 %69)
  %71 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %72 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @UCR4, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @readl(i64 %76)
  %78 = sext i32 %77 to i64
  store i64 %78, i64* %4, align 8
  %79 = load i64, i64* @UCR4_TCEN, align 8
  %80 = xor i64 %79, -1
  %81 = load i64, i64* %4, align 8
  %82 = and i64 %81, %80
  store i64 %82, i64* %4, align 8
  %83 = load i64, i64* %4, align 8
  %84 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %85 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @UCR4, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @writel(i64 %83, i64 %89)
  br label %91

91:                                               ; preds = %102, %48
  %92 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %93 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @URXD0, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @readl(i64 %97)
  %99 = load i32, i32* @URXD_CHARRDY, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %91
  %103 = call i32 (...) @barrier()
  br label %91

104:                                              ; preds = %91
  %105 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %106 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @UCR1, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @readl(i64 %110)
  %112 = sext i32 %111 to i64
  store i64 %112, i64* %4, align 8
  %113 = load i64, i64* @UCR1_RRDYEN, align 8
  %114 = load i64, i64* %4, align 8
  %115 = or i64 %114, %113
  store i64 %115, i64* %4, align 8
  %116 = load i64, i64* %4, align 8
  %117 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %118 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @UCR1, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @writel(i64 %116, i64 %122)
  %124 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %125 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @UCR4, align 8
  %129 = add nsw i64 %127, %128
  %130 = call i32 @readl(i64 %129)
  %131 = sext i32 %130 to i64
  store i64 %131, i64* %4, align 8
  %132 = load i64, i64* @UCR4_DREN, align 8
  %133 = load i64, i64* %4, align 8
  %134 = or i64 %133, %132
  store i64 %134, i64* %4, align 8
  %135 = load i64, i64* %4, align 8
  %136 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %137 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @UCR4, align 8
  %141 = add nsw i64 %139, %140
  %142 = call i32 @writel(i64 %135, i64 %141)
  br label %143

143:                                              ; preds = %104, %33
  br label %164

144:                                              ; preds = %1
  %145 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %146 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @UCR1, align 8
  %150 = add nsw i64 %148, %149
  %151 = call i32 @readl(i64 %150)
  %152 = sext i32 %151 to i64
  store i64 %152, i64* %4, align 8
  %153 = load i64, i64* %4, align 8
  %154 = load i64, i64* @UCR1_TXMPTYEN, align 8
  %155 = xor i64 %154, -1
  %156 = and i64 %153, %155
  %157 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %158 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @UCR1, align 8
  %162 = add nsw i64 %160, %161
  %163 = call i32 @writel(i64 %156, i64 %162)
  br label %164

164:                                              ; preds = %144, %143
  ret void
}

declare dso_local i64 @USE_IRDA(%struct.imx_port*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
