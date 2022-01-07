; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_6pack.c_sixpack_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_6pack.c_sixpack_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.sixpack*, %struct.TYPE_3__* }
%struct.sixpack = type { i8*, i8*, i64, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_4__, i64, i64, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, %struct.tty_struct*, i32, i32, %struct.net_device* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.net_device = type { i32 }
%struct.TYPE_3__ = type { i32* }

@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"sp%d\00", align 1
@sp_setup = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@AX25_MTU = common dso_local global i64 0, align 8
@SIXP_TXDELAY = common dso_local global i32 0, align 4
@SIXP_PERSIST = common dso_local global i32 0, align 4
@SIXP_SLOTTIME = common dso_local global i32 0, align 4
@sp_xmit_on_air = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*)* @sixpack_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sixpack_open(%struct.tty_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.sixpack*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* @CAP_NET_ADMIN, align 4
  %11 = call i32 @capable(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @EPERM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %166

16:                                               ; preds = %1
  %17 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %18 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %17, i32 0, i32 2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %166

26:                                               ; preds = %16
  %27 = load i32, i32* @sp_setup, align 4
  %28 = call %struct.net_device* @alloc_netdev(i32 184, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %27)
  store %struct.net_device* %28, %struct.net_device** %6, align 8
  %29 = load %struct.net_device*, %struct.net_device** %6, align 8
  %30 = icmp ne %struct.net_device* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %9, align 4
  br label %164

34:                                               ; preds = %26
  %35 = load %struct.net_device*, %struct.net_device** %6, align 8
  %36 = call %struct.sixpack* @netdev_priv(%struct.net_device* %35)
  store %struct.sixpack* %36, %struct.sixpack** %7, align 8
  %37 = load %struct.net_device*, %struct.net_device** %6, align 8
  %38 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %39 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %38, i32 0, i32 24
  store %struct.net_device* %37, %struct.net_device** %39, align 8
  %40 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %41 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %40, i32 0, i32 6
  %42 = call i32 @spin_lock_init(i32* %41)
  %43 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %44 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %43, i32 0, i32 23
  %45 = call i32 @atomic_set(i32* %44, i32 1)
  %46 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %47 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %46, i32 0, i32 22
  %48 = call i32 @init_MUTEX_LOCKED(i32* %47)
  %49 = load %struct.net_device*, %struct.net_device** %6, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %51, 2
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %8, align 8
  %54 = load i64, i64* %8, align 8
  %55 = add i64 %54, 4
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call i8* @kmalloc(i64 %55, i32 %56)
  store i8* %57, i8** %4, align 8
  %58 = load i64, i64* %8, align 8
  %59 = add i64 %58, 4
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i8* @kmalloc(i64 %59, i32 %60)
  store i8* %61, i8** %5, align 8
  %62 = load i8*, i8** %4, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %34
  %65 = load i8*, i8** %5, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %64, %34
  %68 = load i32, i32* @ENOBUFS, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %9, align 4
  br label %153

70:                                               ; preds = %64
  %71 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %72 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %71, i32 0, i32 6
  %73 = call i32 @spin_lock_bh(i32* %72)
  %74 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %75 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %76 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %75, i32 0, i32 21
  store %struct.tty_struct* %74, %struct.tty_struct** %76, align 8
  %77 = load i8*, i8** %4, align 8
  %78 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %79 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %78, i32 0, i32 0
  store i8* %77, i8** %79, align 8
  %80 = load i8*, i8** %5, align 8
  %81 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %82 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  %83 = load i64, i64* @AX25_MTU, align 8
  %84 = add nsw i64 %83, 73
  %85 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %86 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %85, i32 0, i32 20
  store i64 %84, i64* %86, align 8
  %87 = load i64, i64* %8, align 8
  %88 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %89 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %88, i32 0, i32 2
  store i64 %87, i64* %89, align 8
  %90 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %91 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %90, i32 0, i32 19
  store i64 0, i64* %91, align 8
  %92 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %93 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %92, i32 0, i32 18
  store i64 0, i64* %93, align 8
  %94 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %95 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %94, i32 0, i32 17
  store i64 0, i64* %95, align 8
  %96 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %97 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %96, i32 0, i32 16
  store i64 0, i64* %97, align 8
  %98 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %99 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %98, i32 0, i32 15
  store i64 0, i64* %99, align 8
  %100 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %101 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %100, i32 0, i32 14
  store i64 0, i64* %101, align 8
  %102 = load i32, i32* @SIXP_TXDELAY, align 4
  %103 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %104 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %103, i32 0, i32 13
  store i32 %102, i32* %104, align 8
  %105 = load i32, i32* @SIXP_PERSIST, align 4
  %106 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %107 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %106, i32 0, i32 12
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* @SIXP_SLOTTIME, align 4
  %109 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %110 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %109, i32 0, i32 11
  store i32 %108, i32* %110, align 8
  %111 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %112 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %111, i32 0, i32 3
  store i32 96, i32* %112, align 8
  %113 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %114 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %113, i32 0, i32 4
  store i32 1, i32* %114, align 4
  %115 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %116 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %115, i32 0, i32 5
  store i32 1, i32* %116, align 8
  %117 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %118 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %117, i32 0, i32 10
  store i64 0, i64* %118, align 8
  %119 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %120 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %119, i32 0, i32 9
  store i64 0, i64* %120, align 8
  %121 = load %struct.net_device*, %struct.net_device** %6, align 8
  %122 = call i32 @netif_start_queue(%struct.net_device* %121)
  %123 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %124 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %123, i32 0, i32 8
  %125 = call i32 @init_timer(%struct.TYPE_4__* %124)
  %126 = load i32, i32* @sp_xmit_on_air, align 4
  %127 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %128 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %127, i32 0, i32 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  store i32 %126, i32* %129, align 8
  %130 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %131 = ptrtoint %struct.sixpack* %130 to i64
  %132 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %133 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %132, i32 0, i32 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  store i64 %131, i64* %134, align 8
  %135 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %136 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %135, i32 0, i32 7
  %137 = call i32 @init_timer(%struct.TYPE_4__* %136)
  %138 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %139 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %138, i32 0, i32 6
  %140 = call i32 @spin_unlock_bh(i32* %139)
  %141 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %142 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %143 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %142, i32 0, i32 1
  store %struct.sixpack* %141, %struct.sixpack** %143, align 8
  %144 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %145 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %144, i32 0, i32 0
  store i32 65536, i32* %145, align 8
  %146 = load %struct.net_device*, %struct.net_device** %6, align 8
  %147 = call i64 @register_netdev(%struct.net_device* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %70
  br label %153

150:                                              ; preds = %70
  %151 = load %struct.sixpack*, %struct.sixpack** %7, align 8
  %152 = call i32 @tnc_init(%struct.sixpack* %151)
  store i32 0, i32* %2, align 4
  br label %166

153:                                              ; preds = %149, %67
  %154 = load i8*, i8** %5, align 8
  %155 = call i32 @kfree(i8* %154)
  %156 = load i8*, i8** %4, align 8
  %157 = call i32 @kfree(i8* %156)
  %158 = load %struct.net_device*, %struct.net_device** %6, align 8
  %159 = icmp ne %struct.net_device* %158, null
  br i1 %159, label %160, label %163

160:                                              ; preds = %153
  %161 = load %struct.net_device*, %struct.net_device** %6, align 8
  %162 = call i32 @free_netdev(%struct.net_device* %161)
  br label %163

163:                                              ; preds = %160, %153
  br label %164

164:                                              ; preds = %163, %31
  %165 = load i32, i32* %9, align 4
  store i32 %165, i32* %2, align 4
  br label %166

166:                                              ; preds = %164, %150, %23, %13
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local i32 @capable(i32) #1

declare dso_local %struct.net_device* @alloc_netdev(i32, i8*, i32) #1

declare dso_local %struct.sixpack* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_MUTEX_LOCKED(i32*) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @init_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @tnc_init(%struct.sixpack*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
