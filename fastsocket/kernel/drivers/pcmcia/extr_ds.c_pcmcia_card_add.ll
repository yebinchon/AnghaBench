; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_ds.c_pcmcia_card_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_ds.c_pcmcia_card_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"no resources available, delaying card_add\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"validating mem resources failed, delaying card_add\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"invalid CIS or invalid resources\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@BIND_FN_ALL = common dso_local global i32 0, align 4
@CISTPL_LONGLINK_MFC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_socket*)* @pcmcia_card_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcmcia_card_add(%struct.pcmcia_socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_socket*, align 8
  %4 = alloca %struct.TYPE_3__, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %3, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %10 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %15 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %14, i32 0, i32 1
  %16 = call i32 @ds_dev_dbg(i32 3, i32* %15, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EAGAIN, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %70

19:                                               ; preds = %1
  %20 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %21 = call i64 @pcmcia_validate_mem(%struct.pcmcia_socket* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %25 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %24, i32 0, i32 1
  %26 = call i32 @ds_dev_dbg(i32 3, i32* %25, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @EAGAIN, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %70

29:                                               ; preds = %19
  %30 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %31 = call i32 @pccard_validate_cis(%struct.pcmcia_socket* %30, i32* %7)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %34, %29
  %38 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %39 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %38, i32 0, i32 1
  %40 = call i32 @ds_dev_dbg(i32 0, i32* %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %70

43:                                               ; preds = %34
  %44 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %45 = load i32, i32* @BIND_FN_ALL, align 4
  %46 = load i32, i32* @CISTPL_LONGLINK_MFC, align 4
  %47 = call i32 @pccard_read_tuple(%struct.pcmcia_socket* %44, i32 %45, i32 %46, %struct.TYPE_3__* %4)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %5, align 4
  br label %53

52:                                               ; preds = %43
  store i32 1, i32* %5, align 4
  br label %53

53:                                               ; preds = %52, %49
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %56 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %65, %53
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @pcmcia_device_add(%struct.pcmcia_socket* %62, i32 %63)
  br label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %6, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %57

68:                                               ; preds = %57
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %68, %37, %23, %13
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @ds_dev_dbg(i32, i32*, i8*) #1

declare dso_local i64 @pcmcia_validate_mem(%struct.pcmcia_socket*) #1

declare dso_local i32 @pccard_validate_cis(%struct.pcmcia_socket*, i32*) #1

declare dso_local i32 @pccard_read_tuple(%struct.pcmcia_socket*, i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @pcmcia_device_add(%struct.pcmcia_socket*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
