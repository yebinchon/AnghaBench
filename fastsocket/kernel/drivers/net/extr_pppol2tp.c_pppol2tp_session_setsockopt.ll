; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pppol2tp.c_pppol2tp_session_setsockopt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pppol2tp.c_pppol2tp_session_setsockopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.pppol2tp_session = type { i32, i32, i32, i32, i32, i32, %struct.sock* }
%struct.pppox_sock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PPPOL2TP_MSG_CONTROL = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s: set recv_seq=%d\0A\00", align 1
@PPPOL2TP_L2TP_HDR_SIZE_SEQ = common dso_local global i32 0, align 4
@PPPOL2TP_L2TP_HDR_SIZE_NOSEQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"%s: set send_seq=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"%s: set lns_mode=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"%s: set debug=%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"%s: set reorder_timeout=%d\0A\00", align 1
@ENOPROTOOPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.pppol2tp_session*, i32, i32)* @pppol2tp_session_setsockopt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pppol2tp_session_setsockopt(%struct.sock* %0, %struct.pppol2tp_session* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.pppol2tp_session*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.pppox_sock*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.pppol2tp_session* %1, %struct.pppol2tp_session** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %146 [
    i32 130, label %13
    i32 128, label %41
    i32 131, label %85
    i32 132, label %113
    i32 129, label %129
  ]

13:                                               ; preds = %4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %9, align 4
  br label %149

22:                                               ; preds = %16, %13
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 -1, i32 0
  %27 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %6, align 8
  %28 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %6, align 8
  %30 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @PPPOL2TP_MSG_CONTROL, align 4
  %33 = load i32, i32* @KERN_INFO, align 4
  %34 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %6, align 8
  %35 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %6, align 8
  %38 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @PRINTK(i32 %31, i32 %32, i32 %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %39)
  br label %149

41:                                               ; preds = %4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 1
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %9, align 4
  br label %149

50:                                               ; preds = %44, %41
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 -1, i32 0
  %55 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %6, align 8
  %56 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %6, align 8
  %58 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %57, i32 0, i32 6
  %59 = load %struct.sock*, %struct.sock** %58, align 8
  store %struct.sock* %59, %struct.sock** %10, align 8
  %60 = load %struct.sock*, %struct.sock** %10, align 8
  %61 = call %struct.pppox_sock* @pppox_sk(%struct.sock* %60)
  store %struct.pppox_sock* %61, %struct.pppox_sock** %11, align 8
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %50
  %65 = load i32, i32* @PPPOL2TP_L2TP_HDR_SIZE_SEQ, align 4
  br label %68

66:                                               ; preds = %50
  %67 = load i32, i32* @PPPOL2TP_L2TP_HDR_SIZE_NOSEQ, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ]
  %70 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %71 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 4
  %73 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %6, align 8
  %74 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @PPPOL2TP_MSG_CONTROL, align 4
  %77 = load i32, i32* @KERN_INFO, align 4
  %78 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %6, align 8
  %79 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %6, align 8
  %82 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @PRINTK(i32 %75, i32 %76, i32 %77, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 %83)
  br label %149

85:                                               ; preds = %4
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 1
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %9, align 4
  br label %149

94:                                               ; preds = %88, %85
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 -1, i32 0
  %99 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %6, align 8
  %100 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 4
  %101 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %6, align 8
  %102 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @PPPOL2TP_MSG_CONTROL, align 4
  %105 = load i32, i32* @KERN_INFO, align 4
  %106 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %6, align 8
  %107 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %6, align 8
  %110 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @PRINTK(i32 %103, i32 %104, i32 %105, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %108, i32 %111)
  br label %149

113:                                              ; preds = %4
  %114 = load i32, i32* %8, align 4
  %115 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %6, align 8
  %116 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %6, align 8
  %118 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @PPPOL2TP_MSG_CONTROL, align 4
  %121 = load i32, i32* @KERN_INFO, align 4
  %122 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %6, align 8
  %123 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %6, align 8
  %126 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @PRINTK(i32 %119, i32 %120, i32 %121, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %124, i32 %127)
  br label %149

129:                                              ; preds = %4
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @msecs_to_jiffies(i32 %130)
  %132 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %6, align 8
  %133 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %132, i32 0, i32 4
  store i32 %131, i32* %133, align 8
  %134 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %6, align 8
  %135 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @PPPOL2TP_MSG_CONTROL, align 4
  %138 = load i32, i32* @KERN_INFO, align 4
  %139 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %6, align 8
  %140 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %6, align 8
  %143 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @PRINTK(i32 %136, i32 %137, i32 %138, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %141, i32 %144)
  br label %149

146:                                              ; preds = %4
  %147 = load i32, i32* @ENOPROTOOPT, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %9, align 4
  br label %149

149:                                              ; preds = %146, %129, %113, %94, %91, %68, %47, %22, %19
  %150 = load i32, i32* %9, align 4
  ret i32 %150
}

declare dso_local i32 @PRINTK(i32, i32, i32, i8*, i32, i32) #1

declare dso_local %struct.pppox_sock* @pppox_sk(%struct.sock*) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
