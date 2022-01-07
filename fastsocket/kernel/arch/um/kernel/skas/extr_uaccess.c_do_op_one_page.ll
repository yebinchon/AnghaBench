; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/kernel/skas/extr_uaccess.c_do_op_one_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/kernel/skas/extr_uaccess.c_do_op_one_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.page = type { i32 }

@KM_UML_USERCOPY = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32, i32 (i64, i32, i8*)*, i8*)* @do_op_one_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_op_one_page(i64 %0, i32 %1, i32 %2, i32 (i64, i32, i8*)* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32 (i64, i32, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.page*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 (i64, i32, i8*)* %3, i32 (i64, i32, i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i32* @maybe_map(i64 %17, i32 %18)
  store i32* %19, i32** %14, align 8
  %20 = load i32*, i32** %14, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %56

23:                                               ; preds = %5
  %24 = load i32*, i32** %14, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.page* @pte_page(i32 %25)
  store %struct.page* %26, %struct.page** %13, align 8
  %27 = load %struct.page*, %struct.page** %13, align 8
  %28 = load i32, i32* @KM_UML_USERCOPY, align 4
  %29 = call i64 @kmap_atomic(%struct.page* %27, i32 %28)
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @PAGE_MASK, align 8
  %32 = xor i64 %31, -1
  %33 = and i64 %30, %32
  %34 = add i64 %29, %33
  store i64 %34, i64* %7, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32* %12, i32** %37, align 8
  %38 = call i32 @UML_SETJMP(i32* %12)
  store i32 %38, i32* %16, align 4
  %39 = load i32, i32* %16, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %23
  %42 = load i32 (i64, i32, i8*)*, i32 (i64, i32, i8*)** %10, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i8*, i8** %11, align 8
  %46 = call i32 %42(i64 %43, i32 %44, i8* %45)
  store i32 %46, i32* %15, align 4
  br label %48

47:                                               ; preds = %23
  store i32 -1, i32* %15, align 4
  br label %48

48:                                               ; preds = %47, %41
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i32* null, i32** %51, align 8
  %52 = load %struct.page*, %struct.page** %13, align 8
  %53 = load i32, i32* @KM_UML_USERCOPY, align 4
  %54 = call i32 @kunmap_atomic(%struct.page* %52, i32 %53)
  %55 = load i32, i32* %15, align 4
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %48, %22
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i32* @maybe_map(i64, i32) #1

declare dso_local %struct.page* @pte_page(i32) #1

declare dso_local i64 @kmap_atomic(%struct.page*, i32) #1

declare dso_local i32 @UML_SETJMP(i32*) #1

declare dso_local i32 @kunmap_atomic(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
