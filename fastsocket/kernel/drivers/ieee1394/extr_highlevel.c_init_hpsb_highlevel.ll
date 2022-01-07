; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_highlevel.c_init_hpsb_highlevel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_highlevel.c_init_hpsb_highlevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_host = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32*, i32 }
%struct.TYPE_3__ = type { i32, i64, i64, i32*, i32 }

@dummy_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpsb_host*)* @init_hpsb_highlevel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_hpsb_highlevel(%struct.hpsb_host* %0) #0 {
  %2 = alloca %struct.hpsb_host*, align 8
  store %struct.hpsb_host* %0, %struct.hpsb_host** %2, align 8
  %3 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %4 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = call i32 @INIT_LIST_HEAD(i32* %5)
  %7 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %8 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 4
  %10 = call i32 @INIT_LIST_HEAD(i32* %9)
  %11 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %12 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %16 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 4
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %20 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 3
  store i32* @dummy_ops, i32** %21, align 8
  %22 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %23 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 3
  store i32* @dummy_ops, i32** %24, align 8
  %25 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %26 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %29 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %32 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i32 undef, i32* %33, align 4
  %34 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %35 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 undef, i32* %36, align 8
  %37 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %38 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %41 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %40, i32 0, i32 0
  %42 = call i32 @list_add_tail(i32* %39, i32* %41)
  %43 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %44 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %47 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %46, i32 0, i32 0
  %48 = call i32 @list_add_tail(i32* %45, i32* %47)
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
