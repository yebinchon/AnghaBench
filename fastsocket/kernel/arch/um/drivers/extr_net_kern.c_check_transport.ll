; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_net_kern.c_check_transport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_net_kern.c_check_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.transport = type { i32 (i8*, i8**, i8*)*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.transport*, i8*, i32, i8**, i8**)* @check_transport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_transport(%struct.transport* %0, i8* %1, i32 %2, i8** %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.transport*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  store %struct.transport* %0, %struct.transport** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store i8** %4, i8*** %11, align 8
  %13 = load %struct.transport*, %struct.transport** %7, align 8
  %14 = getelementptr inbounds %struct.transport, %struct.transport* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @strlen(i32 %15)
  store i32 %16, i32* %12, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = load %struct.transport*, %struct.transport** %7, align 8
  %19 = getelementptr inbounds %struct.transport, %struct.transport* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %12, align 4
  %22 = call i64 @strncmp(i8* %17, i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %71

25:                                               ; preds = %5
  %26 = load i32, i32* %12, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  store i8* %29, i8** %8, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 44
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %8, align 8
  br label %44

37:                                               ; preds = %25
  %38 = load i8*, i8** %8, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  br label %71

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %43, %34
  %45 = load %struct.transport*, %struct.transport** %7, align 8
  %46 = getelementptr inbounds %struct.transport, %struct.transport* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call i8* @kmalloc(i32 %47, i32 %48)
  %50 = load i8**, i8*** %10, align 8
  store i8* %49, i8** %50, align 8
  %51 = load i8**, i8*** %10, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  store i32 1, i32* %6, align 4
  br label %71

55:                                               ; preds = %44
  %56 = load %struct.transport*, %struct.transport** %7, align 8
  %57 = getelementptr inbounds %struct.transport, %struct.transport* %56, i32 0, i32 0
  %58 = load i32 (i8*, i8**, i8*)*, i32 (i8*, i8**, i8*)** %57, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = load i8**, i8*** %11, align 8
  %61 = load i8**, i8*** %10, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 %58(i8* %59, i8** %60, i8* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %55
  %66 = load i8**, i8*** %10, align 8
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @kfree(i8* %67)
  %69 = load i8**, i8*** %10, align 8
  store i8* null, i8** %69, align 8
  br label %70

70:                                               ; preds = %65, %55
  store i32 1, i32* %6, align 4
  br label %71

71:                                               ; preds = %70, %54, %42, %24
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local i32 @strlen(i32) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
