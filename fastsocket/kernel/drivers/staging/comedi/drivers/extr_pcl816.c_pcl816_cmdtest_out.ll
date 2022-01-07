; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl816.c_pcl816_cmdtest_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl816.c_pcl816_cmdtest_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"pcl816 e=%d startsrc=%x scansrc=%x convsrc=%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"pcl816 e=%d startarg=%d scanarg=%d convarg=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"pcl816 e=%d stopsrc=%x scanend=%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"pcl816 e=%d stoparg=%d scanendarg=%d chanlistlen=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.comedi_cmd*)* @pcl816_cmdtest_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcl816_cmdtest_out(i32 %0, %struct.comedi_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_cmd*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.comedi_cmd* %1, %struct.comedi_cmd** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %7 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %6, i32 0, i32 10
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %10 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %9, i32 0, i32 9
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %13 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %12, i32 0, i32 8
  %14 = load i32, i32* %13, align 4
  %15 = call i32 (i8*, i32, i32, i32, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %8, i32 %11, i32 %14)
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %18 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %21 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %24 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i8*, i32, i32, i32, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %16, i32 %19, i32 %22, i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %29 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %32 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i8*, i32, i32, i32, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %27, i32 %30, i32 %33)
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %37 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %40 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %43 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i8*, i32, i32, i32, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %35, i32 %38, i32 %41, i32 %44)
  ret void
}

declare dso_local i32 @printk(i8*, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
