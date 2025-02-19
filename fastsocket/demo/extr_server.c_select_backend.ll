; ModuleID = '/home/carl/AnghaBench/fastsocket/demo/extr_server.c_select_backend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/demo/extr_server.c_select_backend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.sockaddr_in = type { i32, i32, i32 }

@select_backend.last = internal global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@pa = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"Select Back-end server %s:%d\0A\00", align 1
@pa_num = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sockaddr_in*)* @select_backend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @select_backend(%struct.sockaddr_in* %0) #0 {
  %2 = alloca %struct.sockaddr_in*, align 8
  store %struct.sockaddr_in* %0, %struct.sockaddr_in** %2, align 8
  %3 = load i32, i32* @AF_INET, align 4
  %4 = load %struct.sockaddr_in*, %struct.sockaddr_in** %2, align 8
  %5 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 2
  store i32 %3, i32* %5, align 4
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pa, align 8
  %7 = load i32, i32* @select_backend.last, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @htons(i32 %11)
  %13 = load %struct.sockaddr_in*, %struct.sockaddr_in** %2, align 8
  %14 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pa, align 8
  %16 = load i32, i32* @select_backend.last, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.sockaddr_in*, %struct.sockaddr_in** %2, align 8
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pa, align 8
  %24 = load i32, i32* @select_backend.last, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pa, align 8
  %30 = load i32, i32* @select_backend.last, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @print_d(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %34)
  %36 = load i32, i32* @select_backend.last, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* @select_backend.last, align 4
  %38 = load i32, i32* @select_backend.last, align 4
  %39 = load i32, i32* @pa_num, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %1
  store i32 0, i32* @select_backend.last, align 4
  br label %42

42:                                               ; preds = %41, %1
  ret void
}

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @print_d(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
