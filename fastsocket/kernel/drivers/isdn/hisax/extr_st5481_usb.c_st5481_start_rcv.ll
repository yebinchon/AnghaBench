; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_st5481_usb.c_st5481_start_rcv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_st5481_usb.c_st5481_start_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st5481_in = type { %struct.TYPE_2__**, %struct.st5481_adapter* }
%struct.TYPE_2__ = type { i32 }
%struct.st5481_adapter = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @st5481_start_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @st5481_start_rcv(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.st5481_in*, align 8
  %4 = alloca %struct.st5481_adapter*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.st5481_in*
  store %struct.st5481_in* %6, %struct.st5481_in** %3, align 8
  %7 = load %struct.st5481_in*, %struct.st5481_in** %3, align 8
  %8 = getelementptr inbounds %struct.st5481_in, %struct.st5481_in* %7, i32 0, i32 1
  %9 = load %struct.st5481_adapter*, %struct.st5481_adapter** %8, align 8
  store %struct.st5481_adapter* %9, %struct.st5481_adapter** %4, align 8
  %10 = call i32 @DBG(i32 4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.st5481_adapter*, %struct.st5481_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.st5481_in*, %struct.st5481_in** %3, align 8
  %15 = getelementptr inbounds %struct.st5481_in, %struct.st5481_in* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %16, i64 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %13, i32* %19, align 4
  %20 = load %struct.st5481_in*, %struct.st5481_in** %3, align 8
  %21 = getelementptr inbounds %struct.st5481_in, %struct.st5481_in* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %22, i64 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i32 @SUBMIT_URB(%struct.TYPE_2__* %24, i32 %25)
  %27 = load %struct.st5481_adapter*, %struct.st5481_adapter** %4, align 8
  %28 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.st5481_in*, %struct.st5481_in** %3, align 8
  %31 = getelementptr inbounds %struct.st5481_in, %struct.st5481_in* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %32, i64 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 %29, i32* %35, align 4
  %36 = load %struct.st5481_in*, %struct.st5481_in** %3, align 8
  %37 = getelementptr inbounds %struct.st5481_in, %struct.st5481_in* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %38, i64 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i32 @SUBMIT_URB(%struct.TYPE_2__* %40, i32 %41)
  ret void
}

declare dso_local i32 @DBG(i32, i8*) #1

declare dso_local i32 @SUBMIT_URB(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
