; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_cistpl.c_pcmcia_replace_cis.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_cistpl.c_pcmcia_replace_cis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { i64, i32*, i32 }

@CISTPL_MAX_CIS_SIZE = common dso_local global i64 0, align 8
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"replacement CIS too big\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"no memory to replace CIS\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcmcia_replace_cis(%struct.pcmcia_socket* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcmcia_socket*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @CISTPL_MAX_CIS_SIZE, align 8
  %10 = icmp ugt i64 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %3
  %12 = load i32, i32* @KERN_WARNING, align 4
  %13 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %5, align 8
  %14 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %13, i32 0, i32 2
  %15 = call i32 @dev_printk(i32 %12, i32* %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %49

18:                                               ; preds = %3
  %19 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %5, align 8
  %20 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @kfree(i32* %21)
  %23 = load i64, i64* %7, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i32* @kmalloc(i64 %23, i32 %24)
  %26 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %5, align 8
  %27 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %26, i32 0, i32 1
  store i32* %25, i32** %27, align 8
  %28 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %5, align 8
  %29 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %18
  %33 = load i32, i32* @KERN_WARNING, align 4
  %34 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %5, align 8
  %35 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %34, i32 0, i32 2
  %36 = call i32 @dev_printk(i32 %33, i32* %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %49

39:                                               ; preds = %18
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %5, align 8
  %42 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %5, align 8
  %44 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @memcpy(i32* %45, i32* %46, i64 %47)
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %39, %32, %11
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @dev_printk(i32, i32*, i8*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32* @kmalloc(i64, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
