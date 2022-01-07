; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/frv/kernel/extr_traps.c_show_backtrace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/frv/kernel/extr_traps.c_show_backtrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.pt_regs = type { i64, %struct.pt_regs* }

@.str = private unnamed_addr constant [24 x i8] c"\0AProcess %s (pid: %d)\0A\0A\00", align 1
@current = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c" %04lx :\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c" %08lx\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"-- TOS %08lx does not follow frame %p --\0A\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"-- next_frame %08lx is invalid (range %08lx-%08lx) --\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_backtrace(%struct.pt_regs* %0, i64 %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %10 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %11 = ptrtoint %struct.pt_regs* %10 to i64
  %12 = add i64 %11, 8191
  %13 = and i64 %12, -8192
  %14 = sub i64 %13, 4
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = inttoptr i64 %15 to %struct.pt_regs*
  store %struct.pt_regs* %16, %struct.pt_regs** %5, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i64, i64* %4, align 8
  store i64 %20, i64* %6, align 8
  %21 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %22 = ptrtoint %struct.pt_regs* %21 to i64
  store i64 %22, i64* %7, align 8
  br label %23

23:                                               ; preds = %19, %2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29)
  br label %31

31:                                               ; preds = %116, %23
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %56, %31
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %57

36:                                               ; preds = %32
  %37 = load i32, i32* %9, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i64, i64* %6, align 8
  %41 = and i64 %40, 65535
  %42 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %41)
  br label %43

43:                                               ; preds = %39, %36
  %44 = load i64, i64* %6, align 8
  %45 = inttoptr i64 %44 to i64*
  %46 = load i64, i64* %45, align 8
  %47 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64 %46)
  %48 = load i64, i64* %6, align 8
  %49 = add i64 %48, 4
  store i64 %49, i64* %6, align 8
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp eq i32 %52, 8
  br i1 %53, label %54, label %56

54:                                               ; preds = %43
  %55 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %54, %43
  br label %32

57:                                               ; preds = %32
  %58 = load i32, i32* %9, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %57
  %63 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %64 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %65 = icmp eq %struct.pt_regs* %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %120

67:                                               ; preds = %62
  %68 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %69 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %6, align 8
  %71 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %72 = ptrtoint %struct.pt_regs* %71 to i64
  %73 = add i64 %72, 16
  %74 = load i64, i64* %6, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %67
  %77 = load i64, i64* %6, align 8
  %78 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %79 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i64 %77, %struct.pt_regs* %78)
  br label %120

80:                                               ; preds = %67
  %81 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %82 = call i32 @show_backtrace_regs(%struct.pt_regs* %81)
  %83 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %84 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %83, i32 0, i32 1
  %85 = load %struct.pt_regs*, %struct.pt_regs** %84, align 8
  %86 = ptrtoint %struct.pt_regs* %85 to i64
  store i64 %86, i64* %7, align 8
  %87 = load i64, i64* %7, align 8
  %88 = load i64, i64* %8, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %116

90:                                               ; preds = %80
  %91 = load i64, i64* %7, align 8
  %92 = load i64, i64* %6, align 8
  %93 = icmp ult i64 %91, %92
  br i1 %93, label %111, label %94

94:                                               ; preds = %90
  %95 = load i64, i64* %7, align 8
  %96 = load i64, i64* %8, align 8
  %97 = icmp ugt i64 %95, %96
  br i1 %97, label %111, label %98

98:                                               ; preds = %94
  %99 = load i64, i64* %7, align 8
  %100 = load i64, i64* %8, align 8
  %101 = icmp ult i64 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load i64, i64* %7, align 8
  %104 = add i64 %103, 16
  %105 = load i64, i64* %8, align 8
  %106 = icmp ugt i64 %104, %105
  br i1 %106, label %111, label %107

107:                                              ; preds = %102, %98
  %108 = load i64, i64* %7, align 8
  %109 = and i64 %108, 3
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %107, %102, %94, %90
  %112 = load i64, i64* %7, align 8
  %113 = load i64, i64* %6, align 8
  %114 = load i64, i64* %8, align 8
  %115 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i64 %112, i64 %113, i64 %114)
  br label %120

116:                                              ; preds = %107, %80
  %117 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %118 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %117, i32 0, i32 1
  %119 = load %struct.pt_regs*, %struct.pt_regs** %118, align 8
  store %struct.pt_regs* %119, %struct.pt_regs** %3, align 8
  br label %31

120:                                              ; preds = %111, %76, %66
  %121 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %122 = call i32 @show_backtrace_regs(%struct.pt_regs* %121)
  ret void
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @show_backtrace_regs(%struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
