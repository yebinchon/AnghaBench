; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_at91_cf.c_at91_cf_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_at91_cf.c_at91_cf_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at91_cf_socket = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"%s: card %s\0A\00", align 1
@driver_name = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"present\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"gone\00", align 1
@SS_DETECT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @at91_cf_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_cf_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.at91_cf_socket*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.at91_cf_socket*
  store %struct.at91_cf_socket* %8, %struct.at91_cf_socket** %5, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.at91_cf_socket*, %struct.at91_cf_socket** %5, align 8
  %11 = getelementptr inbounds %struct.at91_cf_socket, %struct.at91_cf_socket* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %9, %14
  br i1 %15, label %16, label %39

16:                                               ; preds = %2
  %17 = load %struct.at91_cf_socket*, %struct.at91_cf_socket** %5, align 8
  %18 = call i32 @at91_cf_present(%struct.at91_cf_socket* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.at91_cf_socket*, %struct.at91_cf_socket** %5, align 8
  %21 = getelementptr inbounds %struct.at91_cf_socket, %struct.at91_cf_socket* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %19, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %16
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.at91_cf_socket*, %struct.at91_cf_socket** %5, align 8
  %27 = getelementptr inbounds %struct.at91_cf_socket, %struct.at91_cf_socket* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @driver_name, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %33 = call i32 @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %28, i8* %32)
  %34 = load %struct.at91_cf_socket*, %struct.at91_cf_socket** %5, align 8
  %35 = getelementptr inbounds %struct.at91_cf_socket, %struct.at91_cf_socket* %34, i32 0, i32 1
  %36 = load i32, i32* @SS_DETECT, align 4
  %37 = call i32 @pcmcia_parse_events(i32* %35, i32 %36)
  br label %38

38:                                               ; preds = %24, %16
  br label %39

39:                                               ; preds = %38, %2
  %40 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %40
}

declare dso_local i32 @at91_cf_present(%struct.at91_cf_socket*) #1

declare dso_local i32 @pr_debug(i8*, i32, i8*) #1

declare dso_local i32 @pcmcia_parse_events(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
