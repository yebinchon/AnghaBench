; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_espi.c_t1_espi_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_espi.c_t1_espi_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peespi = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.peespi* @t1_espi_create(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.peespi*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.peespi* @kzalloc(i32 8, i32 %4)
  store %struct.peespi* %5, %struct.peespi** %3, align 8
  %6 = load %struct.peespi*, %struct.peespi** %3, align 8
  %7 = icmp ne %struct.peespi* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32*, i32** %2, align 8
  %10 = load %struct.peespi*, %struct.peespi** %3, align 8
  %11 = getelementptr inbounds %struct.peespi, %struct.peespi* %10, i32 0, i32 0
  store i32* %9, i32** %11, align 8
  br label %12

12:                                               ; preds = %8, %1
  %13 = load %struct.peespi*, %struct.peespi** %3, align 8
  ret %struct.peespi* %13
}

declare dso_local %struct.peespi* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
