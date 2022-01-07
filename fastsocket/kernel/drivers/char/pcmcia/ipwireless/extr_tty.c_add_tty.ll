; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/ipwireless/extr_tty.c_add_tty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/ipwireless/extr_tty.c_add_tty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, %struct.ipw_network*, %struct.ipw_hardware* }
%struct.ipw_network = type { i32 }
%struct.ipw_hardware = type { i32 }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_10__ = type { i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ttys = common dso_local global %struct.TYPE_11__** null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@ipw_tty_driver = common dso_local global %struct.TYPE_12__* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"ttyIPWp%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32, %struct.ipw_hardware*, %struct.ipw_network*, i32, i32, i32)* @add_tty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_tty(%struct.TYPE_10__* %0, i32 %1, %struct.ipw_hardware* %2, %struct.ipw_network* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ipw_hardware*, align 8
  %12 = alloca %struct.ipw_network*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.ipw_hardware* %2, %struct.ipw_hardware** %11, align 8
  store %struct.ipw_network* %3, %struct.ipw_network** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.TYPE_11__* @kzalloc(i32 4, i32 %16)
  %18 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @ttys, align 8
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %18, i64 %20
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %21, align 8
  %22 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @ttys, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %22, i64 %24
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = icmp ne %struct.TYPE_11__* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %7
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %8, align 4
  br label %147

31:                                               ; preds = %7
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @ttys, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %33, i64 %35
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  store i32 %32, i32* %38, align 8
  %39 = load %struct.ipw_hardware*, %struct.ipw_hardware** %11, align 8
  %40 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @ttys, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %40, i64 %42
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 6
  store %struct.ipw_hardware* %39, %struct.ipw_hardware** %45, align 8
  %46 = load i32, i32* %13, align 4
  %47 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @ttys, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %47, i64 %49
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  store i32 %46, i32* %52, align 4
  %53 = load i32, i32* %14, align 4
  %54 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @ttys, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %54, i64 %56
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 2
  store i32 %53, i32* %59, align 8
  %60 = load %struct.ipw_network*, %struct.ipw_network** %12, align 8
  %61 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @ttys, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %61, i64 %63
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 5
  store %struct.ipw_network* %60, %struct.ipw_network** %66, align 8
  %67 = load i32, i32* %15, align 4
  %68 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @ttys, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %68, i64 %70
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 3
  store i32 %67, i32* %73, align 4
  %74 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @ttys, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %74, i64 %76
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 4
  %80 = call i32 @mutex_init(i32* %79)
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ipw_tty_driver, align 8
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @tty_register_device(%struct.TYPE_12__* %81, i32 %82, i32* null)
  %84 = load %struct.ipw_network*, %struct.ipw_network** %12, align 8
  %85 = load i32, i32* %13, align 4
  %86 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @ttys, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %86, i64 %88
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  %91 = call i32 @ipwireless_associate_network_tty(%struct.ipw_network* %84, i32 %85, %struct.TYPE_11__* %90)
  %92 = load i32, i32* %14, align 4
  %93 = icmp ne i32 %92, -1
  br i1 %93, label %94, label %103

94:                                               ; preds = %31
  %95 = load %struct.ipw_network*, %struct.ipw_network** %12, align 8
  %96 = load i32, i32* %14, align 4
  %97 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @ttys, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %97, i64 %99
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %100, align 8
  %102 = call i32 @ipwireless_associate_network_tty(%struct.ipw_network* %95, i32 %96, %struct.TYPE_11__* %101)
  br label %103

103:                                              ; preds = %94, %31
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %105 = icmp ne %struct.TYPE_10__* %104, null
  br i1 %105, label %106, label %125

106:                                              ; preds = %103
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @sprintf(i32 %109, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %110)
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ipw_tty_driver, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ipw_tty_driver, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %118, %121
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  store i64 %122, i64* %124, align 8
  br label %125

125:                                              ; preds = %106, %103
  %126 = load i32, i32* %10, align 4
  %127 = sext i32 %126 to i64
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ipw_tty_driver, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = add nsw i64 %127, %130
  %132 = call %struct.TYPE_11__* @get_tty(i64 %131)
  %133 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @ttys, align 8
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %133, i64 %135
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %136, align 8
  %138 = icmp eq %struct.TYPE_11__* %132, %137
  br i1 %138, label %139, label %146

139:                                              ; preds = %125
  %140 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @ttys, align 8
  %141 = load i32, i32* %10, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %140, i64 %142
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %143, align 8
  %145 = call i32 @report_registering(%struct.TYPE_11__* %144)
  br label %146

146:                                              ; preds = %139, %125
  store i32 0, i32* %8, align 4
  br label %147

147:                                              ; preds = %146, %28
  %148 = load i32, i32* %8, align 4
  ret i32 %148
}

declare dso_local %struct.TYPE_11__* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @tty_register_device(%struct.TYPE_12__*, i32, i32*) #1

declare dso_local i32 @ipwireless_associate_network_tty(%struct.ipw_network*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local %struct.TYPE_11__* @get_tty(i64) #1

declare dso_local i32 @report_registering(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
