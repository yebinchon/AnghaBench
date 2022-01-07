; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/appldata/extr_appldata_mem.c_appldata_get_mem_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/appldata/extr_appldata_mem.c_appldata_get_mem_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysinfo = type { i64, i64, i64, i64, i64, i64, i64, i32 }
%struct.appldata_mem_data = type { i64, i64, i64, i64, i64, i64, i64, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }

@appldata_get_mem_data.val = internal global %struct.sysinfo zeroinitializer, align 8
@NR_VM_EVENT_ITEMS = common dso_local global i32 0, align 4
@PGPGIN = common dso_local global i64 0, align 8
@PGPGOUT = common dso_local global i64 0, align 8
@PSWPIN = common dso_local global i64 0, align 8
@PSWPOUT = common dso_local global i64 0, align 8
@PGALLOC_NORMAL = common dso_local global i64 0, align 8
@PGFAULT = common dso_local global i64 0, align 8
@PGMAJFAULT = common dso_local global i64 0, align 8
@NR_FILE_PAGES = common dso_local global i32 0, align 4
@PGALLOC_DMA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @appldata_get_mem_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @appldata_get_mem_data(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.appldata_mem_data*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i32, i32* @NR_VM_EVENT_ITEMS, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i64, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.appldata_mem_data*
  store %struct.appldata_mem_data* %11, %struct.appldata_mem_data** %5, align 8
  %12 = load %struct.appldata_mem_data*, %struct.appldata_mem_data** %5, align 8
  %13 = getelementptr inbounds %struct.appldata_mem_data, %struct.appldata_mem_data* %12, i32 0, i32 18
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = call i32 @all_vm_events(i64* %9)
  %17 = load i64, i64* @PGPGIN, align 8
  %18 = getelementptr inbounds i64, i64* %9, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = lshr i64 %19, 1
  %21 = load %struct.appldata_mem_data*, %struct.appldata_mem_data** %5, align 8
  %22 = getelementptr inbounds %struct.appldata_mem_data, %struct.appldata_mem_data* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load i64, i64* @PGPGOUT, align 8
  %24 = getelementptr inbounds i64, i64* %9, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = lshr i64 %25, 1
  %27 = load %struct.appldata_mem_data*, %struct.appldata_mem_data** %5, align 8
  %28 = getelementptr inbounds %struct.appldata_mem_data, %struct.appldata_mem_data* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load i64, i64* @PSWPIN, align 8
  %30 = getelementptr inbounds i64, i64* %9, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.appldata_mem_data*, %struct.appldata_mem_data** %5, align 8
  %33 = getelementptr inbounds %struct.appldata_mem_data, %struct.appldata_mem_data* %32, i32 0, i32 2
  store i64 %31, i64* %33, align 8
  %34 = load i64, i64* @PSWPOUT, align 8
  %35 = getelementptr inbounds i64, i64* %9, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.appldata_mem_data*, %struct.appldata_mem_data** %5, align 8
  %38 = getelementptr inbounds %struct.appldata_mem_data, %struct.appldata_mem_data* %37, i32 0, i32 3
  store i64 %36, i64* %38, align 8
  %39 = load i64, i64* @PGALLOC_NORMAL, align 8
  %40 = getelementptr inbounds i64, i64* %9, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.appldata_mem_data*, %struct.appldata_mem_data** %5, align 8
  %43 = getelementptr inbounds %struct.appldata_mem_data, %struct.appldata_mem_data* %42, i32 0, i32 4
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* @PGFAULT, align 8
  %45 = getelementptr inbounds i64, i64* %9, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.appldata_mem_data*, %struct.appldata_mem_data** %5, align 8
  %48 = getelementptr inbounds %struct.appldata_mem_data, %struct.appldata_mem_data* %47, i32 0, i32 5
  store i64 %46, i64* %48, align 8
  %49 = load i64, i64* @PGMAJFAULT, align 8
  %50 = getelementptr inbounds i64, i64* %9, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.appldata_mem_data*, %struct.appldata_mem_data** %5, align 8
  %53 = getelementptr inbounds %struct.appldata_mem_data, %struct.appldata_mem_data* %52, i32 0, i32 6
  store i64 %51, i64* %53, align 8
  %54 = call i32 @si_meminfo(%struct.sysinfo* @appldata_get_mem_data.val)
  %55 = load i32, i32* getelementptr inbounds (%struct.sysinfo, %struct.sysinfo* @appldata_get_mem_data.val, i32 0, i32 7), align 8
  %56 = load %struct.appldata_mem_data*, %struct.appldata_mem_data** %5, align 8
  %57 = getelementptr inbounds %struct.appldata_mem_data, %struct.appldata_mem_data* %56, i32 0, i32 17
  store i32 %55, i32* %57, align 8
  %58 = load i64, i64* getelementptr inbounds (%struct.sysinfo, %struct.sysinfo* @appldata_get_mem_data.val, i32 0, i32 6), align 8
  %59 = call i8* @P2K(i64 %58)
  %60 = load %struct.appldata_mem_data*, %struct.appldata_mem_data** %5, align 8
  %61 = getelementptr inbounds %struct.appldata_mem_data, %struct.appldata_mem_data* %60, i32 0, i32 16
  store i8* %59, i8** %61, align 8
  %62 = load i64, i64* getelementptr inbounds (%struct.sysinfo, %struct.sysinfo* @appldata_get_mem_data.val, i32 0, i32 5), align 8
  %63 = call i8* @P2K(i64 %62)
  %64 = load %struct.appldata_mem_data*, %struct.appldata_mem_data** %5, align 8
  %65 = getelementptr inbounds %struct.appldata_mem_data, %struct.appldata_mem_data* %64, i32 0, i32 15
  store i8* %63, i8** %65, align 8
  %66 = load i64, i64* getelementptr inbounds (%struct.sysinfo, %struct.sysinfo* @appldata_get_mem_data.val, i32 0, i32 4), align 8
  %67 = call i8* @P2K(i64 %66)
  %68 = load %struct.appldata_mem_data*, %struct.appldata_mem_data** %5, align 8
  %69 = getelementptr inbounds %struct.appldata_mem_data, %struct.appldata_mem_data* %68, i32 0, i32 14
  store i8* %67, i8** %69, align 8
  %70 = load i64, i64* getelementptr inbounds (%struct.sysinfo, %struct.sysinfo* @appldata_get_mem_data.val, i32 0, i32 3), align 8
  %71 = call i8* @P2K(i64 %70)
  %72 = load %struct.appldata_mem_data*, %struct.appldata_mem_data** %5, align 8
  %73 = getelementptr inbounds %struct.appldata_mem_data, %struct.appldata_mem_data* %72, i32 0, i32 13
  store i8* %71, i8** %73, align 8
  %74 = load i64, i64* getelementptr inbounds (%struct.sysinfo, %struct.sysinfo* @appldata_get_mem_data.val, i32 0, i32 2), align 8
  %75 = call i8* @P2K(i64 %74)
  %76 = load %struct.appldata_mem_data*, %struct.appldata_mem_data** %5, align 8
  %77 = getelementptr inbounds %struct.appldata_mem_data, %struct.appldata_mem_data* %76, i32 0, i32 12
  store i8* %75, i8** %77, align 8
  %78 = load i32, i32* @NR_FILE_PAGES, align 4
  %79 = call i64 @global_page_state(i32 %78)
  %80 = load i64, i64* getelementptr inbounds (%struct.sysinfo, %struct.sysinfo* @appldata_get_mem_data.val, i32 0, i32 2), align 8
  %81 = sub nsw i64 %79, %80
  %82 = call i8* @P2K(i64 %81)
  %83 = load %struct.appldata_mem_data*, %struct.appldata_mem_data** %5, align 8
  %84 = getelementptr inbounds %struct.appldata_mem_data, %struct.appldata_mem_data* %83, i32 0, i32 11
  store i8* %82, i8** %84, align 8
  %85 = call i32 @si_swapinfo(%struct.sysinfo* @appldata_get_mem_data.val)
  %86 = load i64, i64* getelementptr inbounds (%struct.sysinfo, %struct.sysinfo* @appldata_get_mem_data.val, i32 0, i32 1), align 8
  %87 = call i8* @P2K(i64 %86)
  %88 = load %struct.appldata_mem_data*, %struct.appldata_mem_data** %5, align 8
  %89 = getelementptr inbounds %struct.appldata_mem_data, %struct.appldata_mem_data* %88, i32 0, i32 10
  store i8* %87, i8** %89, align 8
  %90 = load i64, i64* getelementptr inbounds (%struct.sysinfo, %struct.sysinfo* @appldata_get_mem_data.val, i32 0, i32 0), align 8
  %91 = call i8* @P2K(i64 %90)
  %92 = load %struct.appldata_mem_data*, %struct.appldata_mem_data** %5, align 8
  %93 = getelementptr inbounds %struct.appldata_mem_data, %struct.appldata_mem_data* %92, i32 0, i32 9
  store i8* %91, i8** %93, align 8
  %94 = call i32 (...) @get_clock()
  %95 = load %struct.appldata_mem_data*, %struct.appldata_mem_data** %5, align 8
  %96 = getelementptr inbounds %struct.appldata_mem_data, %struct.appldata_mem_data* %95, i32 0, i32 8
  store i32 %94, i32* %96, align 4
  %97 = load %struct.appldata_mem_data*, %struct.appldata_mem_data** %5, align 8
  %98 = getelementptr inbounds %struct.appldata_mem_data, %struct.appldata_mem_data* %97, i32 0, i32 7
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 8
  %101 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %101)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @all_vm_events(i64*) #2

declare dso_local i32 @si_meminfo(%struct.sysinfo*) #2

declare dso_local i8* @P2K(i64) #2

declare dso_local i64 @global_page_state(i32) #2

declare dso_local i32 @si_swapinfo(%struct.sysinfo*) #2

declare dso_local i32 @get_clock(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
