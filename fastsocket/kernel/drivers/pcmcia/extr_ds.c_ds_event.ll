; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_ds.c_ds_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_ds.c_ds_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"PCMCIA obtaining reference to socket failed, event 0x%x lost!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"ds_event(0x%06x, %d, 0x%p)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_socket*, i32, i32)* @ds_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds_event(%struct.pcmcia_socket* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcmcia_socket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pcmcia_socket*, align 8
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %5, align 8
  %10 = call %struct.pcmcia_socket* @pcmcia_get_socket(%struct.pcmcia_socket* %9)
  store %struct.pcmcia_socket* %10, %struct.pcmcia_socket** %8, align 8
  %11 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %12 = icmp ne %struct.pcmcia_socket* %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @KERN_ERR, align 4
  %15 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %5, align 8
  %16 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %15, i32 0, i32 1
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @dev_printk(i32 %14, i32* %16, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %56

21:                                               ; preds = %3
  %22 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %5, align 8
  %23 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %22, i32 0, i32 1
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %5, align 8
  %27 = call i32 @ds_dev_dbg(i32 1, i32* %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %25, %struct.pcmcia_socket* %26)
  %28 = load i32, i32* %6, align 4
  switch i32 %28, label %49 [
    i32 133, label %29
    i32 134, label %38
    i32 131, label %47
    i32 129, label %48
    i32 130, label %48
    i32 128, label %48
    i32 132, label %48
  ]

29:                                               ; preds = %21
  %30 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %31 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 0, i32* %32, align 4
  %33 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %5, align 8
  %34 = call i32 @pcmcia_card_remove(%struct.pcmcia_socket* %33, i32* null)
  %35 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @handle_event(%struct.pcmcia_socket* %35, i32 %36)
  br label %53

38:                                               ; preds = %21
  %39 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %40 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  %42 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %5, align 8
  %43 = call i32 @pcmcia_card_add(%struct.pcmcia_socket* %42)
  %44 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @handle_event(%struct.pcmcia_socket* %44, i32 %45)
  br label %53

47:                                               ; preds = %21
  br label %53

48:                                               ; preds = %21, %21, %21, %21
  br label %49

49:                                               ; preds = %21, %48
  %50 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @handle_event(%struct.pcmcia_socket* %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %47, %38, %29
  %54 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %55 = call i32 @pcmcia_put_socket(%struct.pcmcia_socket* %54)
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %53, %13
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.pcmcia_socket* @pcmcia_get_socket(%struct.pcmcia_socket*) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*, i32) #1

declare dso_local i32 @ds_dev_dbg(i32, i32*, i8*, i32, i32, %struct.pcmcia_socket*) #1

declare dso_local i32 @pcmcia_card_remove(%struct.pcmcia_socket*, i32*) #1

declare dso_local i32 @handle_event(%struct.pcmcia_socket*, i32) #1

declare dso_local i32 @pcmcia_card_add(%struct.pcmcia_socket*) #1

declare dso_local i32 @pcmcia_put_socket(%struct.pcmcia_socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
