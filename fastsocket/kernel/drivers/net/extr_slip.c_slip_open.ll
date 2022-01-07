; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_slip.c_slip_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_slip.c_slip_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.tty_struct = type { i32, %struct.slip*, %struct.TYPE_5__* }
%struct.slip = type { i64, i32, i32, i32, %struct.tty_struct*, %struct.TYPE_6__*, %struct.TYPE_8__, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_5__ = type { i32* }

@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@SLIP_MAGIC = common dso_local global i64 0, align 8
@ENFILE = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_7__* null, align 8
@SLF_INUSE = common dso_local global i32 0, align 4
@SL_MTU = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*)* @slip_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slip_open(%struct.tty_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.slip*, align 8
  %5 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  %6 = load i32, i32* @CAP_NET_ADMIN, align 4
  %7 = call i32 @capable(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @EPERM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %113

12:                                               ; preds = %1
  %13 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %113

22:                                               ; preds = %12
  %23 = call i32 (...) @rtnl_lock()
  %24 = call i32 (...) @sl_sync()
  %25 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %26 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %25, i32 0, i32 1
  %27 = load %struct.slip*, %struct.slip** %26, align 8
  store %struct.slip* %27, %struct.slip** %4, align 8
  %28 = load i32, i32* @EEXIST, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  %30 = load %struct.slip*, %struct.slip** %4, align 8
  %31 = icmp ne %struct.slip* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %22
  %33 = load %struct.slip*, %struct.slip** %4, align 8
  %34 = getelementptr inbounds %struct.slip, %struct.slip* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SLIP_MAGIC, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %110

39:                                               ; preds = %32, %22
  %40 = load i32, i32* @ENFILE, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  %42 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %43 = call i32 @tty_devnum(%struct.tty_struct* %42)
  %44 = call %struct.slip* @sl_alloc(i32 %43)
  store %struct.slip* %44, %struct.slip** %4, align 8
  %45 = load %struct.slip*, %struct.slip** %4, align 8
  %46 = icmp eq %struct.slip* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %110

48:                                               ; preds = %39
  %49 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %50 = load %struct.slip*, %struct.slip** %4, align 8
  %51 = getelementptr inbounds %struct.slip, %struct.slip* %50, i32 0, i32 4
  store %struct.tty_struct* %49, %struct.tty_struct** %51, align 8
  %52 = load %struct.slip*, %struct.slip** %4, align 8
  %53 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %54 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %53, i32 0, i32 1
  store %struct.slip* %52, %struct.slip** %54, align 8
  %55 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %56 = call i32 @tty_devnum(%struct.tty_struct* %55)
  %57 = load %struct.slip*, %struct.slip** %4, align 8
  %58 = getelementptr inbounds %struct.slip, %struct.slip* %57, i32 0, i32 9
  store i32 %56, i32* %58, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.slip*, %struct.slip** %4, align 8
  %63 = getelementptr inbounds %struct.slip, %struct.slip* %62, i32 0, i32 8
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* @SLF_INUSE, align 4
  %65 = load %struct.slip*, %struct.slip** %4, align 8
  %66 = getelementptr inbounds %struct.slip, %struct.slip* %65, i32 0, i32 3
  %67 = call i32 @test_bit(i32 %64, i32* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %89, label %69

69:                                               ; preds = %48
  %70 = load %struct.slip*, %struct.slip** %4, align 8
  %71 = load i32, i32* @SL_MTU, align 4
  %72 = call i32 @sl_alloc_bufs(%struct.slip* %70, i32 %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %101

76:                                               ; preds = %69
  %77 = load i32, i32* @SLF_INUSE, align 4
  %78 = load %struct.slip*, %struct.slip** %4, align 8
  %79 = getelementptr inbounds %struct.slip, %struct.slip* %78, i32 0, i32 3
  %80 = call i32 @set_bit(i32 %77, i32* %79)
  %81 = load %struct.slip*, %struct.slip** %4, align 8
  %82 = getelementptr inbounds %struct.slip, %struct.slip* %81, i32 0, i32 5
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = call i32 @register_netdevice(%struct.TYPE_6__* %83)
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %76
  br label %98

88:                                               ; preds = %76
  br label %89

89:                                               ; preds = %88, %48
  %90 = call i32 (...) @rtnl_unlock()
  %91 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %92 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %91, i32 0, i32 0
  store i32 65536, i32* %92, align 8
  %93 = load %struct.slip*, %struct.slip** %4, align 8
  %94 = getelementptr inbounds %struct.slip, %struct.slip* %93, i32 0, i32 5
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %2, align 4
  br label %113

98:                                               ; preds = %87
  %99 = load %struct.slip*, %struct.slip** %4, align 8
  %100 = call i32 @sl_free_bufs(%struct.slip* %99)
  br label %101

101:                                              ; preds = %98, %75
  %102 = load %struct.slip*, %struct.slip** %4, align 8
  %103 = getelementptr inbounds %struct.slip, %struct.slip* %102, i32 0, i32 4
  store %struct.tty_struct* null, %struct.tty_struct** %103, align 8
  %104 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %105 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %104, i32 0, i32 1
  store %struct.slip* null, %struct.slip** %105, align 8
  %106 = load i32, i32* @SLF_INUSE, align 4
  %107 = load %struct.slip*, %struct.slip** %4, align 8
  %108 = getelementptr inbounds %struct.slip, %struct.slip* %107, i32 0, i32 3
  %109 = call i32 @clear_bit(i32 %106, i32* %108)
  br label %110

110:                                              ; preds = %101, %47, %38
  %111 = call i32 (...) @rtnl_unlock()
  %112 = load i32, i32* %5, align 4
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %110, %89, %19, %9
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @sl_sync(...) #1

declare dso_local %struct.slip* @sl_alloc(i32) #1

declare dso_local i32 @tty_devnum(%struct.tty_struct*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @sl_alloc_bufs(%struct.slip*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @register_netdevice(%struct.TYPE_6__*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @sl_free_bufs(%struct.slip*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
