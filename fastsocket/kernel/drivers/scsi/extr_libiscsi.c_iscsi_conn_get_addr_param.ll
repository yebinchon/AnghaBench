; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_conn_get_addr_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_conn_get_addr_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.sockaddr_in6 = type { i32, i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%pI4\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%pI6\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%hu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsi_conn_get_addr_param(%struct.sockaddr_storage* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_storage*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sockaddr_in6*, align 8
  %9 = alloca %struct.sockaddr_in*, align 8
  %10 = alloca i32, align 4
  store %struct.sockaddr_storage* %0, %struct.sockaddr_storage** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store %struct.sockaddr_in6* null, %struct.sockaddr_in6** %8, align 8
  store %struct.sockaddr_in* null, %struct.sockaddr_in** %9, align 8
  %11 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %12 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %20 [
    i32 132, label %14
    i32 131, label %17
  ]

14:                                               ; preds = %3
  %15 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %16 = bitcast %struct.sockaddr_storage* %15 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %16, %struct.sockaddr_in** %9, align 8
  br label %23

17:                                               ; preds = %3
  %18 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %19 = bitcast %struct.sockaddr_storage* %18 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %19, %struct.sockaddr_in6** %8, align 8
  br label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %63

23:                                               ; preds = %17, %14
  %24 = load i32, i32* %6, align 4
  switch i32 %24, label %58 [
    i32 129, label %25
    i32 130, label %25
    i32 128, label %40
  ]

25:                                               ; preds = %23, %23
  %26 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %27 = icmp ne %struct.sockaddr_in* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i8*, i8** %7, align 8
  %30 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %31 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @sprintf(i8* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %32)
  store i32 %33, i32* %10, align 4
  br label %39

34:                                               ; preds = %25
  %35 = load i8*, i8** %7, align 8
  %36 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %37 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %36, i32 0, i32 1
  %38 = call i32 @sprintf(i8* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %37)
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %34, %28
  br label %61

40:                                               ; preds = %23
  %41 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %42 = icmp ne %struct.sockaddr_in* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load i8*, i8** %7, align 8
  %45 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %46 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32* @be16_to_cpu(i32 %47)
  %49 = call i32 @sprintf(i8* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %48)
  store i32 %49, i32* %10, align 4
  br label %57

50:                                               ; preds = %40
  %51 = load i8*, i8** %7, align 8
  %52 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %53 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32* @be16_to_cpu(i32 %54)
  %56 = call i32 @sprintf(i8* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %55)
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %50, %43
  br label %61

58:                                               ; preds = %23
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %63

61:                                               ; preds = %57, %39
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %61, %58, %20
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @sprintf(i8*, i8*, i32*) #1

declare dso_local i32* @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
