; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/parport/extr_ieee1284_ops.c_parport_ieee1284_epp_read_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/parport/extr_ieee1284_ops.c_parport_ieee1284_epp_read_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.parport*)*, i32 (%struct.parport*)* }

@PARPORT_CONTROL_STROBE = common dso_local global i32 0, align 4
@PARPORT_CONTROL_AUTOFD = common dso_local global i32 0, align 4
@PARPORT_CONTROL_SELECT = common dso_local global i32 0, align 4
@PARPORT_CONTROL_INIT = common dso_local global i32 0, align 4
@PARPORT_STATUS_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @parport_ieee1284_epp_read_addr(%struct.parport* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.parport*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.parport* %0, %struct.parport** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %6, align 8
  store i8* %11, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.parport*, %struct.parport** %5, align 8
  %13 = load i32, i32* @PARPORT_CONTROL_STROBE, align 4
  %14 = load i32, i32* @PARPORT_CONTROL_AUTOFD, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @PARPORT_CONTROL_SELECT, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @PARPORT_CONTROL_INIT, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @PARPORT_CONTROL_INIT, align 4
  %21 = call i32 @parport_frob_control(%struct.parport* %12, i32 %19, i32 %20)
  %22 = load %struct.parport*, %struct.parport** %5, align 8
  %23 = getelementptr inbounds %struct.parport, %struct.parport* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32 (%struct.parport*)*, i32 (%struct.parport*)** %25, align 8
  %27 = load %struct.parport*, %struct.parport** %5, align 8
  %28 = call i32 %26(%struct.parport* %27)
  br label %29

29:                                               ; preds = %58, %4
  %30 = load i64, i64* %7, align 8
  %31 = icmp ugt i64 %30, 0
  br i1 %31, label %32, label %63

32:                                               ; preds = %29
  %33 = load %struct.parport*, %struct.parport** %5, align 8
  %34 = load i32, i32* @PARPORT_CONTROL_SELECT, align 4
  %35 = load i32, i32* @PARPORT_CONTROL_SELECT, align 4
  %36 = call i32 @parport_frob_control(%struct.parport* %33, i32 %34, i32 %35)
  %37 = load %struct.parport*, %struct.parport** %5, align 8
  %38 = load i32, i32* @PARPORT_STATUS_BUSY, align 4
  %39 = call i64 @parport_wait_peripheral(%struct.parport* %37, i32 %38, i32 0)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %63

42:                                               ; preds = %32
  %43 = load %struct.parport*, %struct.parport** %5, align 8
  %44 = call zeroext i8 @parport_read_data(%struct.parport* %43)
  %45 = load i8*, i8** %9, align 8
  store i8 %44, i8* %45, align 1
  %46 = load %struct.parport*, %struct.parport** %5, align 8
  %47 = load i32, i32* @PARPORT_CONTROL_SELECT, align 4
  %48 = call i32 @parport_frob_control(%struct.parport* %46, i32 %47, i32 0)
  %49 = load %struct.parport*, %struct.parport** %5, align 8
  %50 = load i32, i32* @PARPORT_STATUS_BUSY, align 4
  %51 = load i32, i32* @PARPORT_STATUS_BUSY, align 4
  %52 = call i64 @parport_poll_peripheral(%struct.parport* %49, i32 %50, i32 %51, i32 5)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  br label %63

55:                                               ; preds = %42
  %56 = load i32, i32* %10, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %55
  %59 = load i64, i64* %7, align 8
  %60 = add i64 %59, -1
  store i64 %60, i64* %7, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %9, align 8
  br label %29

63:                                               ; preds = %54, %41, %29
  %64 = load %struct.parport*, %struct.parport** %5, align 8
  %65 = getelementptr inbounds %struct.parport, %struct.parport* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32 (%struct.parport*)*, i32 (%struct.parport*)** %67, align 8
  %69 = load %struct.parport*, %struct.parport** %5, align 8
  %70 = call i32 %68(%struct.parport* %69)
  %71 = load i32, i32* %10, align 4
  %72 = zext i32 %71 to i64
  ret i64 %72
}

declare dso_local i32 @parport_frob_control(%struct.parport*, i32, i32) #1

declare dso_local i64 @parport_wait_peripheral(%struct.parport*, i32, i32) #1

declare dso_local zeroext i8 @parport_read_data(%struct.parport*) #1

declare dso_local i64 @parport_poll_peripheral(%struct.parport*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
