; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/mm/extr_kmap.c_free_io_area.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/mm/extr_kmap.c_free_io_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_struct = type { i8*, i32, %struct.vm_struct* }

@IO_SIZE = common dso_local global i64 0, align 8
@iolist = common dso_local global %struct.vm_struct* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @free_io_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_io_area(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vm_struct**, align 8
  %4 = alloca %struct.vm_struct*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %43

8:                                                ; preds = %1
  %9 = load i8*, i8** %2, align 8
  %10 = ptrtoint i8* %9 to i64
  %11 = load i64, i64* @IO_SIZE, align 8
  %12 = sub i64 0, %11
  %13 = and i64 %10, %12
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %2, align 8
  store %struct.vm_struct** @iolist, %struct.vm_struct*** %3, align 8
  br label %15

15:                                               ; preds = %40, %8
  %16 = load %struct.vm_struct**, %struct.vm_struct*** %3, align 8
  %17 = load %struct.vm_struct*, %struct.vm_struct** %16, align 8
  store %struct.vm_struct* %17, %struct.vm_struct** %4, align 8
  %18 = icmp ne %struct.vm_struct* %17, null
  br i1 %18, label %19, label %43

19:                                               ; preds = %15
  %20 = load %struct.vm_struct*, %struct.vm_struct** %4, align 8
  %21 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load i8*, i8** %2, align 8
  %24 = icmp eq i8* %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %19
  %26 = load %struct.vm_struct*, %struct.vm_struct** %4, align 8
  %27 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %26, i32 0, i32 2
  %28 = load %struct.vm_struct*, %struct.vm_struct** %27, align 8
  %29 = load %struct.vm_struct**, %struct.vm_struct*** %3, align 8
  store %struct.vm_struct* %28, %struct.vm_struct** %29, align 8
  %30 = load %struct.vm_struct*, %struct.vm_struct** %4, align 8
  %31 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.vm_struct*, %struct.vm_struct** %4, align 8
  %34 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @__iounmap(i8* %32, i32 %35)
  %37 = load %struct.vm_struct*, %struct.vm_struct** %4, align 8
  %38 = call i32 @kfree(%struct.vm_struct* %37)
  br label %43

39:                                               ; preds = %19
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.vm_struct*, %struct.vm_struct** %4, align 8
  %42 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %41, i32 0, i32 2
  store %struct.vm_struct** %42, %struct.vm_struct*** %3, align 8
  br label %15

43:                                               ; preds = %7, %25, %15
  ret void
}

declare dso_local i32 @__iounmap(i8*, i32) #1

declare dso_local i32 @kfree(%struct.vm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
