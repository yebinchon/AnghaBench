; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_cistpl.c_pccard_read_tuple.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_cistpl.c_pccard_read_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { i32 }
%struct.TYPE_5__ = type { i32, i64, i32*, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"no memory to read tuple\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BIND_FN_ALL = common dso_local global i32 0, align 4
@TUPLE_RETURN_COMMON = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pccard_read_tuple(%struct.pcmcia_socket* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pcmcia_socket*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_5__, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i32* @kmalloc(i32 256, i32 %13)
  store i32* %14, i32** %11, align 8
  %15 = load i32*, i32** %11, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %4
  %18 = load i32, i32* @KERN_WARNING, align 4
  %19 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %20 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %19, i32 0, i32 0
  %21 = call i32 @dev_printk(i32 %18, i32* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %58

24:                                               ; preds = %4
  %25 = load i32, i32* %8, align 4
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 4
  store i32 %25, i32* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 3
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @BIND_FN_ALL, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i64, i64* @TUPLE_RETURN_COMMON, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 3
  store i64 %32, i64* %33, align 8
  br label %34

34:                                               ; preds = %31, %24
  %35 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @pccard_get_first_tuple(%struct.pcmcia_socket* %35, i32 %36, %struct.TYPE_5__* %10)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %54

41:                                               ; preds = %34
  %42 = load i32*, i32** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  store i32* %42, i32** %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i32 255, i32* %45, align 8
  %46 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %47 = call i32 @pccard_get_tuple_data(%struct.pcmcia_socket* %46, %struct.TYPE_5__* %10)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %54

51:                                               ; preds = %41
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 @pcmcia_parse_tuple(%struct.TYPE_5__* %10, i8* %52)
  store i32 %53, i32* %12, align 4
  br label %54

54:                                               ; preds = %51, %50, %40
  %55 = load i32*, i32** %11, align 8
  %56 = call i32 @kfree(i32* %55)
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %54, %17
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*) #1

declare dso_local i32 @pccard_get_first_tuple(%struct.pcmcia_socket*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @pccard_get_tuple_data(%struct.pcmcia_socket*, %struct.TYPE_5__*) #1

declare dso_local i32 @pcmcia_parse_tuple(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
