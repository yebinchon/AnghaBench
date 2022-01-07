; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ioc3_serial.c_do_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ioc3_serial.c_do_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioc3_port = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32, %struct.ring*, %struct.port_hooks* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ring = type { i32 }
%struct.port_hooks = type { i32 }
%struct.ring_entry = type { i32*, i32*, i64 }

@PROD_CONS_MASK = common dso_local global i32 0, align 4
@TXCB_VALID = common dso_local global i32 0, align 4
@LOWAT_WRITTEN = common dso_local global i32 0, align 4
@TXCB_INT_WHEN_DONE = common dso_local global i32 0, align 4
@SSCR_DMA_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ioc3_port*, i8*, i32)* @do_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_write(%struct.ioc3_port* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ioc3_port*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ring*, align 8
  %11 = alloca %struct.ring_entry*, align 8
  %12 = alloca %struct.port_hooks*, align 8
  %13 = alloca i32, align 4
  store %struct.ioc3_port* %0, %struct.ioc3_port** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %14 = load %struct.ioc3_port*, %struct.ioc3_port** %4, align 8
  %15 = getelementptr inbounds %struct.ioc3_port, %struct.ioc3_port* %14, i32 0, i32 7
  %16 = load %struct.port_hooks*, %struct.port_hooks** %15, align 8
  store %struct.port_hooks* %16, %struct.port_hooks** %12, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp sge i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.ioc3_port*, %struct.ioc3_port** %4, align 8
  %23 = getelementptr inbounds %struct.ioc3_port, %struct.ioc3_port* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %7, align 4
  %25 = load %struct.ioc3_port*, %struct.ioc3_port** %4, align 8
  %26 = getelementptr inbounds %struct.ioc3_port, %struct.ioc3_port* %25, i32 0, i32 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = call i32 @readl(i32* %28)
  %30 = load i32, i32* @PROD_CONS_MASK, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %8, align 4
  %32 = load %struct.ioc3_port*, %struct.ioc3_port** %4, align 8
  %33 = getelementptr inbounds %struct.ioc3_port, %struct.ioc3_port* %32, i32 0, i32 6
  %34 = load %struct.ring*, %struct.ring** %33, align 8
  store %struct.ring* %34, %struct.ring** %10, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sub nsw i32 %35, 24
  %37 = load i32, i32* @PROD_CONS_MASK, align 4
  %38 = and i32 %36, %37
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %121, %3
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* %6, align 4
  %45 = icmp sgt i32 %44, 0
  br label %46

46:                                               ; preds = %43, %39
  %47 = phi i1 [ false, %39 ], [ %45, %43 ]
  br i1 %47, label %48, label %129

48:                                               ; preds = %46
  %49 = load %struct.ring*, %struct.ring** %10, align 8
  %50 = ptrtoint %struct.ring* %49 to i64
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %50, %52
  %54 = inttoptr i64 %53 to %struct.ring_entry*
  store %struct.ring_entry* %54, %struct.ring_entry** %11, align 8
  %55 = load %struct.ring_entry*, %struct.ring_entry** %11, align 8
  %56 = getelementptr inbounds %struct.ring_entry, %struct.ring_entry* %55, i32 0, i32 2
  store i64 0, i64* %56, align 8
  store i32 0, i32* %13, align 4
  br label %57

57:                                               ; preds = %87, %48
  %58 = load i32, i32* %13, align 4
  %59 = icmp slt i32 %58, 4
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* %6, align 4
  %62 = icmp sgt i32 %61, 0
  br label %63

63:                                               ; preds = %60, %57
  %64 = phi i1 [ false, %57 ], [ %62, %60 ]
  br i1 %64, label %65, label %90

65:                                               ; preds = %63
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %5, align 8
  %68 = load i8, i8* %66, align 1
  %69 = sext i8 %68 to i32
  %70 = load %struct.ring_entry*, %struct.ring_entry** %11, align 8
  %71 = getelementptr inbounds %struct.ring_entry, %struct.ring_entry* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %69, i32* %75, align 4
  %76 = load i32, i32* @TXCB_VALID, align 4
  %77 = load %struct.ring_entry*, %struct.ring_entry** %11, align 8
  %78 = getelementptr inbounds %struct.ring_entry, %struct.ring_entry* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  store i32 %76, i32* %82, align 4
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %87

87:                                               ; preds = %65
  %88 = load i32, i32* %13, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %13, align 4
  br label %57

90:                                               ; preds = %63
  %91 = load %struct.ioc3_port*, %struct.ioc3_port** %4, align 8
  %92 = getelementptr inbounds %struct.ioc3_port, %struct.ioc3_port* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @LOWAT_WRITTEN, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %121, label %97

97:                                               ; preds = %90
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %7, align 4
  %100 = sub nsw i32 %98, %99
  %101 = load i32, i32* @PROD_CONS_MASK, align 4
  %102 = and i32 %100, %101
  %103 = load %struct.ioc3_port*, %struct.ioc3_port** %4, align 8
  %104 = getelementptr inbounds %struct.ioc3_port, %struct.ioc3_port* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = mul nsw i32 %105, 24
  %107 = icmp sle i32 %102, %106
  br i1 %107, label %108, label %121

108:                                              ; preds = %97
  %109 = load i32, i32* @LOWAT_WRITTEN, align 4
  %110 = load %struct.ioc3_port*, %struct.ioc3_port** %4, align 8
  %111 = getelementptr inbounds %struct.ioc3_port, %struct.ioc3_port* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 4
  %114 = load i32, i32* @TXCB_INT_WHEN_DONE, align 4
  %115 = load %struct.ring_entry*, %struct.ring_entry** %11, align 8
  %116 = getelementptr inbounds %struct.ring_entry, %struct.ring_entry* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %114
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %108, %97, %90
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = add i64 %123, 24
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* @PROD_CONS_MASK, align 4
  %127 = load i32, i32* %7, align 4
  %128 = and i32 %127, %126
  store i32 %128, i32* %7, align 4
  br label %39

129:                                              ; preds = %46
  %130 = load i32, i32* %9, align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %153

132:                                              ; preds = %129
  %133 = load %struct.ioc3_port*, %struct.ioc3_port** %4, align 8
  %134 = getelementptr inbounds %struct.ioc3_port, %struct.ioc3_port* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @SSCR_DMA_EN, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %153, label %139

139:                                              ; preds = %132
  %140 = load i32, i32* @SSCR_DMA_EN, align 4
  %141 = load %struct.ioc3_port*, %struct.ioc3_port** %4, align 8
  %142 = getelementptr inbounds %struct.ioc3_port, %struct.ioc3_port* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, %140
  store i32 %144, i32* %142, align 4
  %145 = load %struct.ioc3_port*, %struct.ioc3_port** %4, align 8
  %146 = getelementptr inbounds %struct.ioc3_port, %struct.ioc3_port* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.ioc3_port*, %struct.ioc3_port** %4, align 8
  %149 = getelementptr inbounds %struct.ioc3_port, %struct.ioc3_port* %148, i32 0, i32 4
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 1
  %152 = call i32 @writel(i32 %147, i32* %151)
  br label %153

153:                                              ; preds = %139, %132, %129
  %154 = load %struct.ioc3_port*, %struct.ioc3_port** %4, align 8
  %155 = getelementptr inbounds %struct.ioc3_port, %struct.ioc3_port* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @uart_tx_stopped(i32 %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %175, label %159

159:                                              ; preds = %153
  %160 = load i32, i32* %7, align 4
  %161 = load %struct.ioc3_port*, %struct.ioc3_port** %4, align 8
  %162 = getelementptr inbounds %struct.ioc3_port, %struct.ioc3_port* %161, i32 0, i32 4
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  %165 = call i32 @writel(i32 %160, i32* %164)
  %166 = load i32, i32* %9, align 4
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %159
  %169 = load %struct.ioc3_port*, %struct.ioc3_port** %4, align 8
  %170 = load %struct.port_hooks*, %struct.port_hooks** %12, align 8
  %171 = getelementptr inbounds %struct.port_hooks, %struct.port_hooks* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @enable_intrs(%struct.ioc3_port* %169, i32 %172)
  br label %174

174:                                              ; preds = %168, %159
  br label %175

175:                                              ; preds = %174, %153
  %176 = load i32, i32* %7, align 4
  %177 = load %struct.ioc3_port*, %struct.ioc3_port** %4, align 8
  %178 = getelementptr inbounds %struct.ioc3_port, %struct.ioc3_port* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 8
  %179 = load i32, i32* %9, align 4
  ret i32 %179
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @uart_tx_stopped(i32) #1

declare dso_local i32 @enable_intrs(%struct.ioc3_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
