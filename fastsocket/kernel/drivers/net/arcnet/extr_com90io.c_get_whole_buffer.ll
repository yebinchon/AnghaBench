; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arcnet/extr_com90io.c_get_whole_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arcnet/extr_com90io.c_get_whole_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@AUTOINCflag = common dso_local global i32 0, align 4
@_ADDR_HI = common dso_local global i32 0, align 4
@_ADDR_LO = common dso_local global i32 0, align 4
@_MEMDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32, i8*)* @get_whole_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_whole_buffer(%struct.net_device* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  %14 = lshr i32 %13, 8
  %15 = load i32, i32* @AUTOINCflag, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @_ADDR_HI, align 4
  %18 = call i32 @outb(i32 %16, i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, 255
  %21 = load i32, i32* @_ADDR_LO, align 4
  %22 = call i32 @outb(i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %27, %4
  %24 = load i32, i32* %7, align 4
  %25 = add i32 %24, -1
  store i32 %25, i32* %7, align 4
  %26 = icmp ne i32 %24, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i32, i32* @_MEMDATA, align 4
  %29 = call i32 @inb(i32 %28)
  %30 = trunc i32 %29 to i8
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %8, align 8
  store i8 %30, i8* %31, align 1
  br label %23

33:                                               ; preds = %23
  ret void
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
