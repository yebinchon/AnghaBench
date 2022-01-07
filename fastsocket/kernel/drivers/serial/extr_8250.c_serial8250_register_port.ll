; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_serial8250_register_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_serial8250_register_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.uart_port = type { i64, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.uart_8250_port = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i64, i32, i64, i32, i64, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@serial_mutex = common dso_local global i32 0, align 4
@serial8250_reg = common dso_local global i32 0, align 4
@UPF_BOOT_AUTOCONF = common dso_local global i32 0, align 4
@UPF_FIXED_TYPE = common dso_local global i32 0, align 4
@uart_config = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @serial8250_register_port(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.uart_8250_port*, align 8
  %5 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %6 = load i32, i32* @ENOSPC, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %9 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %188

15:                                               ; preds = %1
  %16 = call i32 @mutex_lock(i32* @serial_mutex)
  %17 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %18 = call %struct.uart_8250_port* @serial8250_find_match_or_unused(%struct.uart_port* %17)
  store %struct.uart_8250_port* %18, %struct.uart_8250_port** %4, align 8
  %19 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %20 = icmp ne %struct.uart_8250_port* %19, null
  br i1 %20, label %21, label %185

21:                                               ; preds = %15
  %22 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %23 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %22, i32 0, i32 0
  %24 = call i32 @uart_remove_one_port(i32* @serial8250_reg, %struct.TYPE_5__* %23)
  %25 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %26 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %25, i32 0, i32 14
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %29 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 15
  store i32 %27, i32* %30, align 4
  %31 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %32 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %31, i32 0, i32 13
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %35 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 14
  store i32 %33, i32* %36, align 8
  %37 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %38 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %37, i32 0, i32 12
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %41 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 13
  store i32 %39, i32* %42, align 4
  %43 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %44 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %43, i32 0, i32 11
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %47 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 12
  store i32 %45, i32* %48, align 8
  %49 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %50 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %53 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i64 %51, i64* %54, align 8
  %55 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %56 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %55, i32 0, i32 10
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %59 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 6
  store i32 %57, i32* %60, align 8
  %61 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %62 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %61, i32 0, i32 9
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %65 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 11
  store i32 %63, i32* %66, align 4
  %67 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %68 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %67, i32 0, i32 8
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %71 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 10
  store i32 %69, i32* %72, align 8
  %73 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %74 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @UPF_BOOT_AUTOCONF, align 4
  %77 = or i32 %75, %76
  %78 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %79 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  store i32 %77, i32* %80, align 8
  %81 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %82 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %85 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 9
  store i32 %83, i32* %86, align 4
  %87 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %88 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %91 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 8
  store i32 %89, i32* %92, align 8
  %93 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %94 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %93, i32 0, i32 5
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %21
  %98 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %99 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %98, i32 0, i32 5
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %102 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 7
  store i64 %100, i64* %103, align 8
  br label %104

104:                                              ; preds = %97, %21
  %105 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %106 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @UPF_FIXED_TYPE, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %146

111:                                              ; preds = %104
  %112 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %113 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %116 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 2
  store i64 %114, i64* %117, align 8
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** @uart_config, align 8
  %119 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %120 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %126 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 6
  store i32 %124, i32* %127, align 8
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** @uart_config, align 8
  %129 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %130 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %136 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %135, i32 0, i32 2
  store i32 %134, i32* %136, align 4
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** @uart_config, align 8
  %138 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %139 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %145 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 8
  br label %146

146:                                              ; preds = %111, %104
  %147 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %148 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %147, i32 0, i32 0
  %149 = call i32 @set_io_from_upio(%struct.TYPE_5__* %148)
  %150 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %151 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %150, i32 0, i32 4
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %146
  %155 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %156 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %155, i32 0, i32 4
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %159 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 5
  store i64 %157, i64* %160, align 8
  br label %161

161:                                              ; preds = %154, %146
  %162 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %163 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %161
  %167 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %168 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %171 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 4
  store i64 %169, i64* %172, align 8
  br label %173

173:                                              ; preds = %166, %161
  %174 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %175 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %174, i32 0, i32 0
  %176 = call i32 @uart_add_one_port(i32* @serial8250_reg, %struct.TYPE_5__* %175)
  store i32 %176, i32* %5, align 4
  %177 = load i32, i32* %5, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %173
  %180 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %181 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  store i32 %183, i32* %5, align 4
  br label %184

184:                                              ; preds = %179, %173
  br label %185

185:                                              ; preds = %184, %15
  %186 = call i32 @mutex_unlock(i32* @serial_mutex)
  %187 = load i32, i32* %5, align 4
  store i32 %187, i32* %2, align 4
  br label %188

188:                                              ; preds = %185, %12
  %189 = load i32, i32* %2, align 4
  ret i32 %189
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.uart_8250_port* @serial8250_find_match_or_unused(%struct.uart_port*) #1

declare dso_local i32 @uart_remove_one_port(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @set_io_from_upio(%struct.TYPE_5__*) #1

declare dso_local i32 @uart_add_one_port(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
